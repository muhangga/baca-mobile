import 'dart:async';

import 'package:baca_project_frontend/core/theme.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int _initialCounter = 0;

  void startCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_initialCounter > 0) {
          _initialCounter--;
        } else {
          timer.cancel();
          _initialCounter = 3;
          startSecondCountdown();
        }
      });
    });
  }

  void startSecondCountdown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_initialCounter > 0) {
          _initialCounter--;
        } else if (_initialCounter == 0) {
          timer.cancel();
          _initialCounter = 10;
          startCountdown();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            width: double.infinity,
            height: 135,
            decoration: const BoxDecoration(
              color: Color(0xffFCB200),
            ),
            child: _headerHealth(),
          ),
          Expanded(
            child: Stack(
              children: [
                _background(),
                _nameQuestionAndCountdownTimer(context)
              ],
            ),
          )
        ],
      ),
    );
  }

  _headerHealth() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "YOU",
                    style:
                        blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                  ),
                  Container(
                    width: 135,
                    height: 40,
                    color: Colors.red[900],
                  )
                ],
              ),
              Text(
                "0",
                style:
                    blackTextStyle.copyWith(fontSize: 50, fontWeight: semiBold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "ENEMY",
                    style:
                        blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
                  ),
                  Container(
                    width: 135,
                    height: 40,
                    color: Colors.red[900],
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  _background() {
    return Image.asset(
      'assets/images/background.jpg',
      fit: BoxFit.cover,
      width: double.infinity,
    );
  }

  _nameQuestionAndCountdownTimer(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 230,
            height: 50,
            color: const Color(0xffFCB200),
            child: Center(
              child: Text(
                "GET READY!",
                style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: 160,
            height: 70,
            color: const Color(0xffFCB200),
            child: Center(
              child: Text(
                _initialCounter > 0 ? _initialCounter.toString() : "START!",
                style: blackTextStyle.copyWith(fontSize: 35, fontWeight: bold),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          _characterFight(),
          const SizedBox(
            height: 50,
          ),
          _answerTextField(context),
        ],
      ),
    );
  }

  _characterFight() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/images/user.png',
          width: 80,
        ),
        Image.asset(
          'assets/images/dinosaurus.png',
          width: 200,
        ),
      ],
    );
  }

  _answerTextField(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Masukkan Jawabanmu",
              hintStyle:
                  greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: orangeColor,
                  width: 2,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: 60,
          decoration: BoxDecoration(
            color: orangeColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Text(
            "KIRIM",
            style: whiteTextStyle.copyWith(fontSize: 16),
          )),
        )
      ],
    );
  }
}
