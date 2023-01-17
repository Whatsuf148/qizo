import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qizo/screen/kickoff.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map<String, dynamic>> initialDetailList = [
  {
    "title": "What type of account do you \nlike to create? 👶🏼",
    "description": "You can skip it if you are not sure.",
    "page": const Page1()
  },
  {
    "title": "Describe a workplace that suits you",
    "description": "You can skip it if you are not sure.",
    "page": const Page2()
  },
  {
    "title": "Create an account",
    "description":
        "Please complete your profile. Don't worry your data will remain private and only you can see it.",
    "page": const Page3()
  },
];

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  final PageController _controller = PageController();
  double progress = 0.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      padding: EdgeInsets.zero,
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
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: LinearProgressIndicator(
                        minHeight: 10,
                        value: progress,
                        color: const Color(0xff5F46E9),
                        backgroundColor: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  pageSnapping: false,
                  itemCount: initialDetailList.length,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            initialDetailList[index]['title'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              initialDetailList[index]['description'],
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          initialDetailList[index]['page']
                        ],
                      ),
                    );
                  }),
            ),
            CommonButton(
              textColor: Colors.white,
              backgroundColor: Colors.blue,
              buttonText: "Skip",
              onTap: () {
                _controller
                    .nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                )
                    .then((value) {
                  setState(() {
                    progress =
                        (_controller.page! + 1) / initialDetailList.length;
                  });
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SetupBox(
          boxcolor: Colors.blue,
          textstring: "Personal",
          imagename: 'photo/personal.jpg',
        ),
        SetupBox(
          boxcolor: Colors.orange,
          textstring: "Teacher",
          imagename: 'photo/personal.jpg',
        ),
        SetupBox(
          boxcolor: Color(0xff3BC395),
          textstring: "Student",
          imagename: 'photo/personal.jpg',
        ),
        SetupBox(
          boxcolor: Color(0xffE56771),
          textstring: "Professional",
          imagename: 'photo/personal.jpg',
        ),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SetupBox(
          boxcolor: Colors.blue,
          textstring: "School",
          imagename: 'photo/personal.jpg',
        ),
        SetupBox(
          boxcolor: Colors.orange,
          textstring: "Higher Education",
          imagename: 'photo/personal.jpg',
        ),
        SetupBox(
          boxcolor: Color(0xff3BC395),
          textstring: "Teams",
          imagename: 'photo/personal.jpg',
        ),
        SetupBox(
          boxcolor: Color(0xffE56771),
          textstring: "Business",
          imagename: 'photo/personal.jpg',
        ),
      ],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Full Name",
                style: GoogleFonts.poppins(),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Name",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Date of Birth",
                style: GoogleFonts.poppins(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Select Your Date of Birth",
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.calendar_month_rounded)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Enter Your Phone Number",
                style: GoogleFonts.poppins(),
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: "Select Your Date of Birth",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ],
        ),
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
            Flexible(
              child: Text(
                textstring,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
