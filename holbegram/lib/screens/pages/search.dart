import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:holbegram/screens/auth/methods/user_storage.dart';
import 'package:staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import '../../providers/user_provider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<String> userImages = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadImages();
    });
  }

  Future<void> _loadImages() async {
    final user = Provider.of<UserProvider>(context, listen: false).user;
    if (user != null) {
      final images = await StorageMethods().getUserImagesFromStorage(user.uid);
      setState(() {
        userImages = images;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(90, 156, 151, 151),
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Color.fromARGB(218, 100, 100, 100),
              size: 18,
            ),
            labelText: 'Search',
            labelStyle: TextStyle(color: Colors.black54),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: userImages.length,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    userImages[index],
                    fit: BoxFit.cover,
                  ),
                ),
                staggeredTileBuilder: (index) =>
                    StaggeredTile.count(2, index.isEven ? 3 : 2),
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
            ),
    );
  }
}
