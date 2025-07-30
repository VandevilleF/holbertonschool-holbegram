import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Holbegram', style: TextStyle(fontFamily: 'Billabong', fontSize: 30)),
            Image.asset('assets/images/logo.webp', height: 50),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.plus),
                onPressed: () {},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.comment),
                  onPressed: () {},
                  ),
              ]
            ),
        ],
      ),
    );
  }
}
