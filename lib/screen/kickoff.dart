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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff6949FF),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    "GET STARTED",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LogInPage())));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffF0EDFF),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "I ALREADY HAVE AN ACCOUNT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff6949FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
