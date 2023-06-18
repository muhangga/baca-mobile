import 'package:flutter/material.dart';

class ButtonLevel extends StatelessWidget {
  String imageUrl;
  VoidCallback onTap;

  ButtonLevel({
    Key? key,
    required this.imageUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GestureDetector(
        onTap: () {},
        child: Image.asset(
          imageUrl,
          width: MediaQuery.of(context).size.width / 2.5,
        ),
      ),
    );
  }
}
