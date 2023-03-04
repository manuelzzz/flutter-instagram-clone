import 'package:flutter/material.dart';

class PostAvatar extends StatelessWidget {
  const PostAvatar({Key? key, required this.imageUrl, required this.stories})
      : super(key: key);
  final String imageUrl;
  final bool stories;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: borderLiveAndStories(),
          ),
        ),
        Container(
          width: 45,
          height: 45,
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            // backgroundImage: NetworkImage(imageUrl),
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
      ],
    );
  }

  Gradient borderLiveAndStories() {
    if (stories) {
      return LinearGradient(
        begin: AlignmentDirectional(-1, -1),
        colors: [
          Colors.red.shade600,
          Colors.purple,
        ],
      );
    } else {
      return LinearGradient(
        begin: AlignmentDirectional(-1, -1),
        colors: [
          Colors.white38,
          Colors.black38,
        ],
      );
    }
  }
}
