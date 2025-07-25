import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  String uid;
  String email;
  String username;
  String bio;
  String photoUrl;
  List<dynamic> followers;
  List<dynamic> following;
  List<dynamic> posts;
  List<dynamic> saved;
  String searchKey;

  Users({
    required this.uid,
    required this.email,
    required this.username,
    required this.bio,
    required this.photoUrl,
    required this.followers,
    required this.following,
    required this.posts,
    required this.saved,
    required this.searchKey,
  });

  // Charge les données depuis firestore (récupération d'un document depuis Firebase)
  // Uers.fromSnap() pour lire depuis Firestore
  static Users fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Users(
      uid: snapshot['uid'],
      email: snapshot['email'],
      username: snapshot['username'],
      bio: snapshot['bio'],
      photoUrl: snapshot['photoUrl'],
      followers: snapshot['followers'],
      following: snapshot['following'],
      posts: snapshot['posts'],
      saved: snapshot['saved'],
      searchKey: snapshot['searchKey'],
    );
  }

  // Transforme un objet Dart en Map compatible Firestore pour le stocker
  // user.toJson() pour stocker vers Firestore
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'username': username,
      'bio': bio,
      'photoUrl': photoUrl,
      'followers': followers,
      'following': following,
      'posts': posts,
      'saved': saved,
      'searchKey': searchKey,
    };
  }
}
