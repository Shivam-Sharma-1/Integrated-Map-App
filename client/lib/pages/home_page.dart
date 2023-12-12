import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/post_item.dart';
import '../components/toolbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Toolbar(
          title: 'Home Page',
          actions: [
            IconButton(
              onPressed: () {
                print('Clicked');
              },
              icon: SvgPicture.asset(
                'assets/svg/ic_location.svg',
              ),
            ),
          ],
        ),
        body: ListView(
          children: mockUsersFromServer(),
        ));
  }
}

List<Widget> mockUsersFromServer() {
  List<Widget> users = [];
  for (var i = 0; i < 10000; i++) {
    users.add(const PostItem());
  }

  return users;
}
