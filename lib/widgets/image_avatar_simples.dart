import 'package:flutter/material.dart';

class ImageAvatarSimples extends StatelessWidget {
  const ImageAvatarSimples(
      {super.key, required this.imageUrl, required this.stories});
  final String imageUrl;
  final bool stories;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              begin: AlignmentDirectional(-1, -1),
              colors: [
                Colors.white38,
                Colors.black38
              ],
            ),
          ),
        ),
        Container(
          width: 65,
          height: 65,
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
}
