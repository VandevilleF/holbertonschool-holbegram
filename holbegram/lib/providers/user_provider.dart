import 'package:flutter/material.dart';
import 'package:holbegram/methods/auth_methods.dart';
import 'package:holbegram/models/user.dart';

class UserProvider with ChangeNotifier {
  Users _user;
  final AuthMethode _authMethode;

  UserProvider(this._user, this._authMethode);

  Users get user => _user;

  set user(Users user) {
    _user = user;
    notifyListeners();
  }

  Future<dynamic> refreshUser() async {
    final user = await _authMethode.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
