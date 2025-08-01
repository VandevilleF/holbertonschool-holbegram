import 'dart:typed_data';
import 'package:holbegram/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:holbegram/screens/auth/methods/user_storage.dart';

class AuthMethode {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> login({
    required String email,
    required String password,
  }) async {
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        return ('success');
      } else {
        return ('Please fill all the fields');
      }
    } catch (error) {
      return (error.toString());
    }
  }

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    Uint8List? file,
  }) async {
    try {
      if (email.isEmpty ||
          password.isEmpty ||
          username.isEmpty ||
          file == null) {
        return ('Please fill all the fields');
      }

      UserCredential cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = cred.user;
      if (user == null) return 'User creation failed (no user returned)';

      String photoUrl = await StorageMethods().uploadImageToStorage(
        false,
        'profilePics',
        file,
      );

      Users users = Users(
        uid: user.uid,
        email: email,
        username: username,
        bio: '',
        photoUrl: photoUrl,
        followers: [],
        following: [],
        posts: [],
        saved: [],
        searchKey: username.toLowerCase(),
      );

      await _firestore.collection("users").doc(user.uid).set(users.toJson());

      return 'success';
    } catch (error) {
      return error.toString();
    }
  }

  Future<Users> getUserDetails() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      final snap = await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .get();

      return Users.fromSnap(snap);
    } else {
      return Future.error('No user is currently signed in.');
    }
  }
}
