import 'package:fision/pages/first_page.dart';
import 'package:fision/pages/second_page.dart';
import 'package:fision/pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnboardingScreen> {
  // controller for tracking pages
  PageController _controller = PageController();

  // if the page is the last one
  bool onLastPage = false;

  // if skip is pressed
  bool skipPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // pageview
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
                if (index == 2) {
                  skipPressed = true;
                } else {
                  skipPressed = false;
                }
              });
            },
            children: [
              FirstPage(),
              SecondPage(),
              ThirdPage(),
            ],
          ),

          // dots
          Container(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  Visibility(
                    visible: !skipPressed,
                    child: GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                        setState(() {
                          skipPressed = true;
                        });
                      },
                      child: Text('SKIP',
                          style: GoogleFonts.poppins(
                            color: Color.fromRGBO(216, 221, 235, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),

                  //dot indicator
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotColor: Color.fromRGBO(216, 221, 235, 1),
                        activeDotColor: const Color.fromARGB(255, 9, 120, 175)),
                  ),

                  //done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomePage();
                                },
                              ),
                            );
                          },
                          child: Text('DONE',
                              style: GoogleFonts.poppins(
                                color: Color.fromRGBO(216, 221, 235, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Text('NEXT',
                              style: GoogleFonts.poppins(
                                color: Color.fromRGBO(216, 221, 235, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                ],
              )),
        ],
      ),
    );
  }
}
