import 'package:flutter/material.dart';
import 'package:yoga_app/screens/DetailScreen/detail_page/components/container_image.dart';
import 'package:yoga_app/screens/DetailScreen/detail_page/components/pose_list.dart';
import 'package:yoga_app/screens/DetailScreen/detail_page/components/start_button.dart';
import 'components/headline.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F0ED),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerImage(size: size),
              const Headline(),
              PoseList(),
              const StartButton(),
            ],
          ),
        ),
      ),
    );
  }
}
