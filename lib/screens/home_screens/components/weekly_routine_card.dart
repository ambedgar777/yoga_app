import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class WeeklyRoutineCard extends StatelessWidget {
  const WeeklyRoutineCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 24),
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFFDF2E3),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 5,
              offset: const Offset(0, 3),
            )
          ]
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Weekly Routine\n',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '120',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),
                      TextSpan(
                        text: 'min\n',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'left of last week',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      'Resume Yoga',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 150,
              width: 150,
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_o9jwgpei.json', fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}