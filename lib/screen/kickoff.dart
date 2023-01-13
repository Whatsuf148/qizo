import 'package:flutter/material.dart';
import 'package:qizo/screen/getstarted.dart';
import 'package:qizo/screen/login.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text(
            " Create Share & Play\nQuizzes Whenever and\nWhereever you want",
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CommonButton(
              textColor: Colors.white,
              backgroundColor: Colors.green,
              buttonText: "Get Started",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GetStartedPage())));
              }),
          CommonButton(
            textColor: Colors.black,
            backgroundColor: Colors.blue,
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
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: onTap,
            child: Text(buttonText,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                )),
          ),
        ),
      ),
    );
  }
}
