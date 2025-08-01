import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> keyEnv() async {
  await dotenv.load(fileName: '.env');
}

class StorageMethods {
  final String cloudinaryUrl = "https://api.cloudinary.com/v1_1/dfowm4moz/image/upload";
  final String cloudinaryPreset = "preset_holbegram";

  Future<String> uploadImageToStorage(
    bool isPost,
    String childName,
    Uint8List file,
  ) async {
    String uniqueId = const Uuid().v1();
    var uri = Uri.parse(cloudinaryUrl);
    var request = http.MultipartRequest('POST', uri);
    request.fields['upload_preset'] = cloudinaryPreset;
    request.fields['folder'] = childName;
    request.fields['public_id'] = uniqueId;

    var multipartFile = http.MultipartFile.fromBytes(
      'file',
      file,
      filename: '$uniqueId.jpg',
    );
    request.files.add(multipartFile);

    var response = await request.send();
    if (response.statusCode == 200) {
      var responseData = await response.stream.toBytes();
      var jsonResponse = jsonDecode(String.fromCharCodes(responseData));
      return jsonResponse['secure_url'];
    } else {
      throw Exception('Failed to upload image to Cloudinary');
    }
  }
  Future<void> deleteImageFromStorage(String publicId) async {
    final String deleteUrl = "https://api.cloudinary.com/v1_1/dfowm4moz/image/destroy";

    var uri = Uri.parse(deleteUrl);
    var request = http.MultipartRequest('POST', uri);

    // Pour la suppression, tu as besoin de l'API key et secret
    request.fields['public_id'] = publicId;
    request.fields['api_key'] = dotenv.env['API_KEY'] ?? "";
    request.fields['timestamp'] = DateTime.now().millisecondsSinceEpoch.toString();

    // Tu devras calculer la signature pour la suppression (opération signée)
    // Voir la documentation Cloudinary pour la génération de signature

    var response = await request.send();
    if (response.statusCode != 200) {
      throw Exception('Failed to delete image from Cloudinary');
  }
}
}
