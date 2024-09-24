import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(2, 41, 84, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Lottie animation
          Center(
            child: Lottie.network(
              'https://lottie.host/0ca1c1e0-e47e-4734-9e8e-4e840453140d/uqnOnP9OC4.json',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),

          // spacing between the text and animation
          Padding(
            padding: const EdgeInsets.only(top: 10.0), //padding space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // "FISION" text
                Text(
                  'FISION',
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(216, 221, 235, 1),
                    fontSize: 60,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 10.0,
                  ),
                ),

                // "Fish Disease Detection" text
                Text(
                  'Fish Disease Detection',
                  style: GoogleFonts.poppins(
                    color: Color.fromRGBO(216, 221, 235, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 100), // spacing of elements
        ],
      ),
    );
  }
}
