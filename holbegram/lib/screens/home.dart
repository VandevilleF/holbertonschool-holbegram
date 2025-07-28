import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _StateHome();
}

class _StateHome extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(child: Text('home page')));
  }
}
