import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headline extends StatelessWidget {
  const Headline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 18.0),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: 'Functional Exertion\n',
                style: GoogleFonts.aBeeZee(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            TextSpan(
              text: '3 Functional Yoga',
              style: GoogleFonts.aBeeZee(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}