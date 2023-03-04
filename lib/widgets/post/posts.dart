import 'package:flutter/material.dart';
import 'package:flutter_desafio/widgets/post/post_bottom.dart';
import 'package:flutter_desafio/widgets/post/post_image.dart';
import 'package:flutter_desafio/widgets/post/post_top.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key, required this.json}) : super(key: key);
  final Map<String, dynamic> json;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PostTop(username: json['nome']),
          SizedBox(
            height: 17,
          ),
          PostImage(
              imageUrl:
                  json['imageUrl']),
          PostBottom(),
        ],
      ),
    );
  }
}
