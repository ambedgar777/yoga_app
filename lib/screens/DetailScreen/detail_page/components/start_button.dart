import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFFABC51),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Text(
          'Start Session',
          style: GoogleFonts.aBeeZee(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
