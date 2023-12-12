import 'package:flutter/material.dart';

import '../components/toolbar.dart';
import '../components/user_avatar.dart';
import '../config/app_routes.dart';
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
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
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
                const PopupMenuItem(
                  child: Text(AppStrings.edit),
                  value: ProfileMenu.edit,
                ),
                const PopupMenuItem(
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
          const UserAvatar(
            size: 90,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'Shivam',
            style: AppText.header2,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Madahascar',
            style: AppText.subtitle3,
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    '472',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '119',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.posts),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '860',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.following),
                ],
              )
            ],
          ),
          const Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }
}
