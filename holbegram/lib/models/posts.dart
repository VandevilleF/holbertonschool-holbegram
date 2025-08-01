class Post {
  String caption;
  String uid;
  String username;
  List likes;
  String postId;
  DateTime datePublished;
  String postUrl;
  String profImage;

  Post({
    required this.caption,
    required this.uid,
    required this.username,
    required this.likes,
    required this.postId,
    required this.datePublished,
    required this.postUrl,
    required this.profImage,
  });

  // Chargé depuis firestore
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      caption: json['caption'] ?? "",
      uid: json['uid'] ?? "",
      username: json['username'] ?? "Unknow",
      likes: json['likes'] != null ? List.from(json['likes']) : [],
      postId: json['postId'] ?? "",
      datePublished: json['datePublished'] != null
        ? DateTime.parse(json['datePublished'])
        : DateTime.now(),
      postUrl: json['postUrl'] ?? "https://res.cloudinary.com/dfowm4moz/image/upload/v1754048439/profilePics/56d0e5c0-6ecc-11f0-8df7-f91e4c3f0c86.jpg",
      profImage: json['profImage'] ?? "https://res.cloudinary.com/dfowm4moz/image/upload/v1754048439/profilePics/56d0e5c0-6ecc-11f0-8df7-f91e4c3f0c86.jpg",
    );
  }

  // Transforme un objet Dart en Map compatible Firestore
  Map<String, dynamic> toJson() {
    return {
      'caption': caption,
      'uid': uid,
      'username': username,
      'likes': likes,
      'postId': postId,
      'datePublished': datePublished.toIso8601String(),
      'postUrl': postUrl,
      'profImage': profImage,
    };
  }
}
