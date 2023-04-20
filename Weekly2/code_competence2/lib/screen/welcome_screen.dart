import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 160,
          ),
          Text(
            'WELCOME TO',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 90,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            'Flutter Project Apps',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              fontSize: 90,
              fontWeight: FontWeight.w100,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
