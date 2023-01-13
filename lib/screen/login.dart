import 'package:flutter/material.dart';
import 'package:qizo/screen/kickoff.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool check = true;
  bool isPasswordHidden = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StartPage(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hello There",
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.asset(
                'photo/wavinghand.jpg',
                height: 50,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Email",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const TextField(
            decoration: InputDecoration(hintText: "Enter email"),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Password",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          TextField(
            obscureText: isPasswordHidden,
            decoration: InputDecoration(
                hintText: 'Enter The Password',
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPasswordHidden = !isPasswordHidden;
                      });
                    },
                    icon: Icon(isPasswordHidden
                        ? Icons.visibility_off
                        : Icons.visibility))),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Checkbox(
                value: check,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                onChanged: ((value) {
                  setState(() {
                    check = !check;
                  });
                }),
                activeColor: const Color(0XFF6E50FF),
              ),
              Text(
                "Remember Me",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff795CFE),
                ),
              )),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CommonButton(
                    textColor: Colors.white,
                    backgroundColor: Colors.green,
                    buttonText: "Sign In"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
