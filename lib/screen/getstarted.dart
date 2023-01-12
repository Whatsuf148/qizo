import 'package:flutter/material.dart';
import 'package:qizo/screen/kickoff.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
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
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
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
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                image: DecorationImage(
                                    image: AssetImage(
                                  "photo/personal.jpg",
                                )),
                              ),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Text(
                              " Hello",
                              style: GoogleFonts.poppins(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
