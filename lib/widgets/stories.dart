import 'package:flutter/material.dart';
import 'package:flutter_desafio/widgets/stories_avatar.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topCenter,
        height: 55,
        child: ListView(
          padding: EdgeInsets.all(5.0),
          scrollDirection: Axis.horizontal,
          children: [
            StoriesAvatar(
              live: false,
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            StoriesAvatar(
              live: true,
              imageUrl: "assets/images/default_profile.png",
              stories: false,
            ),
            SizedBox(width: 15),
            StoriesAvatar(
              live: true,
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            StoriesAvatar(
              live: false,
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            StoriesAvatar(
              live: false,
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            StoriesAvatar(
              live: false,
              imageUrl: "assets/images/default_profile.png",
              stories: false,
            ),
            SizedBox(width: 15),
            StoriesAvatar(
              live: false,
              imageUrl: "assets/images/default_profile.png",
              stories: false,
            ),
            SizedBox(width: 15),
            StoriesAvatar(
              live: false,
              imageUrl: "assets/images/default_profile.png",
              stories: false,
            ),
          ],
        ),
      ),
    );
  }
}
