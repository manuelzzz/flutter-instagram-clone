import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
