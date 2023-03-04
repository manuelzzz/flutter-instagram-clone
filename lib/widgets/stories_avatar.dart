
import 'package:flutter/material.dart';

class StoriesAvatar extends StatelessWidget {
  const StoriesAvatar({
    super.key,
    required this.imageUrl,
    required this.live,
    required this.stories,
  });
  final String imageUrl;
  final bool live;
  final bool stories;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: borderLiveAndStories(),
          ),
        ),
        Container(
          width: 55,
          height: 55,
          padding: EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            // backgroundImage: NetworkImage(imageUrl),
            backgroundImage: AssetImage(imageUrl),
          ),
        ),
        liveNotification(),
      ],
    );
  }

  Widget liveNotification() {
    if (live) {
      return SizedBox(
        width: 55,
        height: 55,
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
      );
    } else {
      return SizedBox();
    }
  }

  Gradient borderLiveAndStories() {
    if (live) {
      return LinearGradient(
        begin: AlignmentDirectional(-1, -1),
        colors: [
          Colors.purple,
          Colors.indigo,
        ],
      );
    } else if (stories) {
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
