import 'package:baca_project_frontend/core/theme.dart';
import 'package:baca_project_frontend/features/app/presentation/widgets/button_orange_image.dart';
import 'package:baca_project_frontend/features/app/presentation/widgets/button_widgets.dart';
import 'package:baca_project_frontend/features/app/presentation/widgets/form_widgets.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buttonArrowBack(context),
              FormWidget(
                title: "Nama",
              ),
              FormWidget(
                title: "Alamat",
              ),
              FormWidget(
                title: "Asal Sekolah",
              ),
              FormWidget(
                title: "Username",
              ),
              FormWidget(
                title: "Password",
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ButtonOrangeImage(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    imageUrl: 'assets/images/btn_daftar.png'),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buttonArrowBack(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 45,
        height: 45,
        decoration:
            const BoxDecoration(color: orangeColor2, shape: BoxShape.circle),
        child: const Icon(
          Icons.arrow_back,
          color: whiteColor,
          size: 30,
        ),
      ),
    );
  }
}
