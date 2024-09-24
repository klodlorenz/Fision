import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(2, 41, 84, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // spacing between the text and animation
          Padding(
            padding: const EdgeInsets.only(top: 115.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // "We ensure it's safe to eat" text
                Text(
                  "We ensure it's safe to eat",
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(216, 221, 235, 1),
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 50), // space between the text and animation

          // lottie animation
          Center(
            child: Lottie.network(
              'https://lottie.host/04126815-0253-4aa5-98d8-74ca92efadb8/zEiYcKV4ly.json',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(height: 45), // space between the animation and next text

          // "Start Detecting" text
          Text(
            "Let's Start Detecting! ",
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 231, 143, 10),
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
