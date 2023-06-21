import '../../../../core/theme.dart';
import '../../../../features/app/presentation/widgets/button_orange_image.dart';
import '../../../../features/app/presentation/widgets/form_widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "LOGIN!",
                    style: headerTextStyle.copyWith(
                        fontSize: 60, fontWeight: semiBold),
                  ),
                ),
                FormWidget(
                  title: "USERNAME",
                ),
                FormWidget(
                  title: "PASSWORD",
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ButtonOrangeImage(
                        onTap: () => Navigator.pushNamed(context, '/home'),
                        imageUrl: 'assets/images/btn_masuk.png',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Atau:",
                        style: blackTextStyle.copyWith(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ButtonOrangeImage(
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        imageUrl: 'assets/images/btn_daftar.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
