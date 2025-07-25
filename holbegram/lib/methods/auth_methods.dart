import 'dart:typed_data';
import 'package:holbegram/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      if (email.isNotEmpty || password.isNotEmpty || username.isNotEmpty) {
        return ('Please fill all the fields');
      }
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      if(user != null) {
        Users users = Users(
        uid: user.uid,
        email: email,
        username: username,
        bio: '',
        photoUrl: '',
        followers: [],
        following: [],
        posts: [],
        saved: [],
        searchKey: username.toLowerCase(),
      );
      await _firestore.collection("users").doc(user.uid).set(users.toJson());
      return ('success');
      }
      return ('An unexpected error occurred');
    } catch (error) {
      return (error.toString());
    }
  }
}
