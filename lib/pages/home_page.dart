import 'package:flutter/material.dart';
import 'package:flutter_desafio/widgets/bottom_bar.dart';
import 'package:flutter_desafio/widgets/post/post_map.dart';
import 'package:flutter_desafio/widgets/post/posts.dart';
import 'package:flutter_desafio/widgets/stories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: InstagramAppBar(),
        bottomNavigationBar: Theme(
          data: ThemeData(
            brightness: Brightness.dark,
          ),
          child: Container(
            decoration: BoxDecoration(
                border: Border(
              top: BorderSide(
                color: Colors.white10,
                width: .03,
              ),
            )),
            child: BottomBar(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Stories(),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: List<Widget>.generate(
                    postsInstagram.length,
                    (index) => Posts(
                      json: postsInstagram[index],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InstagramAppBar extends PreferredSize {
  InstagramAppBar({
    super.key,
  }) : super(
            preferredSize: Size.fromHeight(45),
            child: AppBar(
              backgroundColor: Colors.black,
              elevation: 0.0,
              title: Image.asset(
                'assets/images/instagram_logo.png',
                height: 38,
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(3),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(.03),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_sharp,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.send_outlined,
                    size: 20,
                  ),
                ),
              ],
            ));
}
