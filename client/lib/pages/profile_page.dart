import 'package:flutter/material.dart';

import '../components/toolbar.dart';
import '../components/user_avatar.dart';
import '../config/app_strings.dart';
import '../styles/app_text.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  print("Edit");
                  break;
                case ProfileMenu.logout:
                  print('log out');
                  break;
                default:
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(AppStrings.edit),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text(AppStrings.logout),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          )
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Shivam',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Madahascar',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: [
                  Text(
                    '860',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.following),
                ],
              )
            ],
          ),
          Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
