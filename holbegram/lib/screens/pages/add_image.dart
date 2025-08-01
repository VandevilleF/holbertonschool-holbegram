import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:holbegram/methods/auth_methods.dart';
import 'package:holbegram/screens/home.dart';
import 'package:holbegram/screens/pages/methods/post_storage.dart';
import 'package:image_picker/image_picker.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  Uint8List? _image;
  final TextEditingController _captionController = TextEditingController();

  void _handlePost() async {
    final user = await AuthMethode().getUserDetails();
    print('user document $user');

    PostStorage().uploadPost(
      _captionController.text,
      user.uid,
      user.username,
      user.photoUrl,
      _image!,
    );
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('Add Image', style: TextStyle(fontSize: 30)),
            SizedBox(width: 50),
            TextButton(
              onPressed: _handlePost,
              child: Text(
                'Post',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Billabong',
                  fontSize: 30,
                  color: Color.fromARGB(218, 226, 37, 24),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text('Add Image', style: TextStyle(fontSize: 20)),
          Text('Choose an image from your gallery or take a one.'),
          SizedBox(height: 28),
          TextField(
            controller: _captionController,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: 'Write a caption...',
            ),
          ),
          SizedBox(height: 28),
          Image.asset('assets/images/add_images.png', width: 250, height: 250),
          SizedBox(height: 28),
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
        ],
      ),
    );
  }
}
