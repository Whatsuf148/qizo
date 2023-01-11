import 'dart:math';

import 'package:flutter/material.dart';
import 'package:qizo/screen/login.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "photo/kickoff.jpg",
            height: 350,
            width: 350,
          ),
          const Text(
            " Create Share & Play\nQuizzes Whenever and\nWhereever you want",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              wordSpacing: sqrt1_2,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CommonButton(
            textColor: Colors.white,
            backgroundColor: Colors.green,
            buttonText: "Get Started",
          ),
          CommonButton(
            textColor: Colors.black,
            backgroundColor: Colors.white,
            buttonText: "Log in ",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LogInPage()));
            },
          )
        ],
      ),
    );
  }
}

class CommonButton extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final String buttonText;
  final Function()? onTap;

  const CommonButton({
    Key? key,
    required this.textColor,
    required this.backgroundColor,
    required this.buttonText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: onTap,
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
