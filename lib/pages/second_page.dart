import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatelessWidget {
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
                // "Tilapia has long been staple.." text
                Text(
                  'Tilapia has long been staple..',
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

          SizedBox(height: 70), // space between the text and animation

          // lottie animation
          Center(
            child: Lottie.network(
              'https://lottie.host/c2b7eb65-e599-4254-a6b6-aa03bf46e8a9/BF9HCfOJhf.json',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
