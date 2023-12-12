import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:map_integration/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/ic_home.svg"), label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/ic_favorite.svg"),
              label: "Favorite"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/ic_add.svg"),
              label: "Add Post"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
              label: "Messages"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/ic_user.svg"), label: "User"),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text("Favorite")),
    Center(child: Text("Add Post")),
    Center(child: Text("Messages")),
    Center(child: Text("Profile")),
  ];
}
