import 'package:flutter/material.dart';
import 'package:flutter_desafio/widgets/post/post_avatar.dart';

class PostTop extends StatelessWidget {
  const PostTop({Key? key, required this.username}) : super(key: key);
  final String username;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: PostAvatar(
            imageUrl: "assets/images/default_profile.png",
            stories: true,
          ),
        ),
        Text(
          username,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300,
          ),
        ),
        Expanded(child: SizedBox()),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.abc_rounded),
        )
      ],
    );
  }
}
