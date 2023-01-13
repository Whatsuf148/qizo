import 'package:flutter/material.dart';
import 'package:qizo/screen/kickoff.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> contents = [
      {
        "title": "",
        "icon": Icons.abc,
        "color": Colors.red
      },
      {
        "title": "",
        "icon": "",
        "color": Colors.red
      },
      {
        "title": "",
        "icon": Icons.abc,
        "color": Colors.red
      },
    ];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StartPage()));
                    },
                    icon: const Icon(Icons.arrow_back)),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "What type of account do you \nlike to create?" "",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'photo/boyemoji.jpg',
                  height: 24,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "You can skip it if you are not sure",
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SetupBox(
            boxcolor: Colors.blue,
            textstring: "Personal",
            imagename: 'photo/personal.jpg',
          ),
          const SetupBox(
            boxcolor: Colors.orange,
            textstring: "Teacher",
            imagename: '',
          ),
          const SetupBox(
            boxcolor: Color(0xff3BC395),
            textstring: "Student",
            imagename: 'photo/personal.jpg',
          ),
          const SetupBox(
            boxcolor: Color(0xffE56771),
            textstring: "Professional",
            imagename: 'photo/personal.jpg',
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                CommonButton(
                    textColor: Colors.white,
                    backgroundColor: Colors.blue,
                    buttonText: "ok")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SetupBox extends StatelessWidget {
  final Color boxcolor;
  final String textstring;
  final String imagename;
  const SetupBox({
    Key? key,
    required this.boxcolor,
    required this.textstring,
    required this.imagename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black,
              strokeAlign: StrokeAlign.inside,
            )),
        clipBehavior: Clip.hardEdge,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: boxcolor,
                image: DecorationImage(
                    image: AssetImage(
                  imagename,
                )),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Text(
              textstring,
              style: GoogleFonts.poppins(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
