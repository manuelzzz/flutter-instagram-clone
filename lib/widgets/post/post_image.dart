import 'package:flutter/material.dart';

class PostImage extends StatelessWidget {
  const PostImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 500,
      child: Image(
        image: NetworkImage(imageUrl),
      ),
    );
  }
}
