import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:holbegram/screens/login_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:holbegram/methods/auth_methods.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddPicture extends StatefulWidget {
  final String email;
  final String password;
  final String username;

  const AddPicture({
    super.key,
    required this.email,
    required this.password,
    required this.username,
  });

  @override
  State<AddPicture> createState() => _AddPictureState();
}

class _AddPictureState extends State<AddPicture> {
  Uint8List? _image;

  void selectImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      final Uint8List imageData = await file.readAsBytes();
      setState(() {
        _image = imageData;
      });
    }
  }

  void selectImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(source: ImageSource.camera);
    if (file != null) {
      final Uint8List imageData = await file.readAsBytes();
      setState(() {
        _image = imageData;
      });
    }
  }

  void _handleSignUpUser() async {
    String result = await AuthMethode().signUpUser(
      email: widget.email,
      password: widget.password,
      username: widget.username,
      file: _image,
    );
    if (!mounted) return;
    if (result == 'success') {
      const snackbar = SnackBar(content: Text('success'));
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 28),
            Text(
              'Holbegram',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 50),
            ),
            Image.asset('assets/images/logo.webp', width: 80, height: 60),
            SizedBox(height: 28),
            Text(
              'Hello ${widget.username} Welcome to Holbergam.',
              style: TextStyle(fontSize: 20),
            ),
            Text('Choose an image from your gallery or take a new one.'),
            SizedBox(height: 48),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: _image == null
                        ? Image.asset(
                            'assets/images/Sample_User_Icon.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          )
                        : Image.memory(
                            _image!,
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.image,
                          color: Color.fromARGB(218, 226, 37, 24),
                        ),
                        onPressed: selectImageFromGallery,
                      ),
                      SizedBox(width: 50),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.camera,
                          color: Color.fromARGB(218, 226, 37, 24),
                        ),
                        onPressed: selectImageFromCamera,
                      ),
                    ],
                  ),
                  SizedBox(height: 28),
                  SizedBox(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Color.fromARGB(218, 226, 37, 24),
                        ),
                      ),
                      onPressed: _handleSignUpUser,
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
