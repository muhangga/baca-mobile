import 'package:baca_project_frontend/core/theme.dart';
import 'package:flutter/material.dart';

class HomeTitlePage extends StatelessWidget {
  String imageUrl;
  String title;

  HomeTitlePage({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          height: 50,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 22,
            fontWeight: bold,
          ),
        ),
      ],
    );
  }
}
