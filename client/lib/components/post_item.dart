import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          "https://cdn5.vectorstock.com/i/1000x1000/01/69/businesswoman-character-avatar-icon-vector-12800169.jpg",
          width: 40,
          height: 40,
        ),
        SizedBox(
          width: 16,
        ),
        Text(
          "Hello brotha",
          style: AppText.subtitle3,
        )
      ],
    );
  }
}
