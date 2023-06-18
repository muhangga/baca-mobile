import 'package:baca_project_frontend/core/theme.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  double width;
  double height;
  VoidCallback onTap;

  ButtonWidget({
    Key? key,
    required this.title,
    required this.width,
    required this.height,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          primary: orangeColor2,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: brownColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontWeight: bold, fontSize: 18),
        ),
      ),
    );
  }
}
