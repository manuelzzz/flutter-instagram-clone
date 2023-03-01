import 'package:flutter/material.dart';
import 'image_avatar_aovivo.dart';
import 'image_avatar_simples.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.topCenter,
        height: 75,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ImageAvatarSimples(
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            ImageAvatarAoVivo(
              imageUrl: "assets/images/default_profile.png",
            ),
            SizedBox(width: 15),
            ImageAvatarSimples(
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            ImageAvatarSimples(
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            ImageAvatarSimples(
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            ImageAvatarSimples(
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            ImageAvatarSimples(
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
            SizedBox(width: 15),
            ImageAvatarSimples(
              imageUrl: "assets/images/default_profile.png",
              stories: true,
            ),
          ],
        ),
      ),
    );
  }
}
