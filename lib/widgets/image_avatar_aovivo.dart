import 'package:flutter/material.dart';

class ImageAvatarAoVivo extends StatelessWidget {
  const ImageAvatarAoVivo({super.key, required this.imageUrl});
  final String imageUrl;

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
                Colors.purple,
                Colors.indigo,
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
        SizedBox(
          width: 65,
          height: 65,
          child: Align(
            alignment: Alignment(0.1, 1.2),
            child: Container(
              width: 45,
              height: 20,
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Ao vivo",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
