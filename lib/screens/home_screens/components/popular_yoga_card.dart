import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yoga_app/screens/DetailScreen/detail_page/detail_page.dart';

class PopularYogaCards extends StatelessWidget {

  List<String> yogaTitle = [
    'Function \nExertion',
    'Abdominal \nCrunches',
    'HandStand \nSirasana',
  ];

  List<String> imagePath = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
  ];

  PopularYogaCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Yoga',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See all',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16,
                        color: Color(0xFFFABC51),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 320,
          child: ListView.builder(
            itemCount: yogaTitle.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xFFF4F0ED),
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imagePath[index]),
                    ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 7,
                      offset: Offset(0, 5),
                    )
                  ]
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 24.0),
                          child: Text(
                            yogaTitle[index],
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return DetailPage();
                            }));
                          },
                          child: Container(
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.play_arrow),
                                const SizedBox(width: 5),
                                Text(
                                  'Play 45 min',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
