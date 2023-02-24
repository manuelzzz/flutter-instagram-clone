import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
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
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 25,
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.search_sharp,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  )),
              BottomNavigationBarItem(
                  label: '',
                  icon: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.white,
                  )),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}