import 'package:flutter/material.dart';

class ButtonOrangeImage extends StatelessWidget {
  VoidCallback onTap;
  String imageUrl;

  ButtonOrangeImage({
    Key? key,
    required this.onTap,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imageUrl,
        width: 180,
        height: 60,
      ),
    );
  }
}
