import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/post_item.dart';
import '../components/toolbar.dart';
import '../config/app_icons.dart';
import '../config/app_routes.dart';
import '../config/app_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Toolbar(
          title: AppStrings.appName,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.nearby);
              },
              icon: SvgPicture.asset(
                AppIcons.icLocation,
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
