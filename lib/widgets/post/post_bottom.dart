import 'package:flutter/material.dart';

class PostBottom extends StatefulWidget {
  const PostBottom({Key? key}) : super(key: key);

  @override
  State<PostBottom> createState() => _PostBottomState();
}

class _PostBottomState extends State<PostBottom> {
  bool isLiked = false;
  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          alignment: Alignment.bottomCenter,
          iconSize: 25,
          enableFeedback: false,
          onPressed: () {
            setState(() {
              isLiked = !isLiked;
            });
          },
          icon: Icon(
            isLiked ? Icons.favorite_rounded : Icons.favorite_border_rounded,
            color: isLiked ? Colors.red : Colors.white,
          ),
        ),
        IconButton(
          alignment: Alignment.bottomCenter,
          iconSize: 25,
          enableFeedback: false,
          onPressed: () {},
          icon: Icon(Icons.mode_comment_outlined),
        ),
        IconButton(
          alignment: Alignment.bottomCenter,
          iconSize: 25,
          enableFeedback: false,
          onPressed: () {},
          icon: Icon(Icons.send_outlined),
        ),
        Expanded(
          child: SizedBox(),
        ),
        IconButton(
          alignment: Alignment.bottomCenter,
          iconSize: 25,
          enableFeedback: false,
          onPressed: () {
            setState(() {
              isSaved = !isSaved;
            });
          },
          icon: Icon(
            isSaved ? Icons.bookmark : Icons.bookmark_border_rounded,
          ),
        )
      ],
    );
  }
}
