import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PoseList extends StatelessWidget {
  List<String> imagePath = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  List<String> poseTitle = [
    'Beginner Pose',
    'Intermediate Pose',
    'Advanced Pose',
  ];

  List<String> poseTiming = [
    '20 min exercise',
    '15 min exercise',
    '10 min exercise',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(9),
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imagePath[index]),
                          )),
                    ),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${poseTitle[index]}\n',
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: poseTiming[index],
                          style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFFABC51),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.play_arrow, size: 24, color: Colors.white,),
              )
            ],
          ),
        );
      },
    );
  }
}
