import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:holbegram/models/posts.dart';
import 'package:holbegram/screens/pages/methods/post_storage.dart';
import '../models/user.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class Posts extends StatefulWidget {
  const Posts({super.key});

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<UserProvider>(context, listen: false).refreshUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final Users? user = userProvider.user;

    if (user == null) {
    return Center(child: CircularProgressIndicator());
  }

    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('posts').snapshots(),
      builder:
          (
            context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot,
          ) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }

            if (!snapshot.hasData ||
                snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            final posts = snapshot.data!.docs.map((doc) => Post.fromJson(doc.data())).toList();

            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                final postData = snapshot.data!.docs[index].data();
                final publicId = postData['publicId'];

                return SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsetsGeometry.lerp(
                      const EdgeInsets.all(8),
                      const EdgeInsets.all(8),
                      10,
                    ),
                    height: 540,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(post.profImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                post.username,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              IconButton(
                                icon: Icon(Icons.more_horiz),
                                onPressed: () {
                                  PostStorage().deletePost(
                                    post.postId,
                                    publicId,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Post Deleted')),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        // Caption
                        SizedBox(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12.0,
                            ),
                            child: Text(
                              post.caption,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),

                        SizedBox(height: 10),

                        // Image du post
                        Container(
                          width: 350,
                          height: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: NetworkImage(post.postUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(height: 10),

                        // Icons (like, comment, share, save)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.favorite_border),
                            Icon(Icons.comment),
                            Icon(Icons.share),
                            Spacer(),
                            Icon(Icons.bookmark_border),
                          ],
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                );
              },
            );
          },
    );
  }
}
