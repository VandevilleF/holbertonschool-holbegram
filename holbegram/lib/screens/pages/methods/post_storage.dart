import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:holbegram/models/posts.dart';
import 'package:holbegram/screens/auth/methods/user_storage.dart';
import 'package:uuid/uuid.dart';

class PostStorage {
  final _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
    String caption,
    String uid,
    String username,
    String profImage,
    Uint8List image,
  ) async {
    try {
      String postId = const Uuid().v1();

      String imageUrl = await StorageMethods().uploadImageToStorage(
        true,
        'posts',
        image,
      );

      Post newPost = Post(
        caption: caption,
        uid: uid,
        username: username,
        likes: [],
        postId: postId,
        datePublished: DateTime.now(),
        postUrl: imageUrl,
        profImage: profImage,
      );

      await _firestore.collection('posts').doc(postId).set(newPost.toJson());
      return ('OK');
    } catch (error) {
      return (error).toString();
    }
  }

  Future<String> deletePost(String postId, String publicId) async {
    try {
      await _firestore.collection('posts').doc(postId).delete();

      await StorageMethods().deleteImageFromStorage(publicId);
      return ('OK');
    } catch (error) {
      return (error).toString();
    }
  }
}
