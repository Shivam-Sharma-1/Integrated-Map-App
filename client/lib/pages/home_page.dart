import 'package:flutter/material.dart';
import 'package:map_integration/components/post_item.dart';
import 'package:map_integration/styles/app_colors.dart';
import 'package:map_integration/styles/app_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          title: const Text("%minute flutter"),
          centerTitle: false,
          actions: const [Icon(Icons.location_on_outlined)],
        ),
        body: ListView(
          children: mockUsersFromServer(),
        ));
  }
}

List<Widget> mockUsersFromServer() {
  List<Widget> users = [];
  for (var i = 0; i < 10000; i++) {
    users.add(PostItem());
  }

  return users;
}
