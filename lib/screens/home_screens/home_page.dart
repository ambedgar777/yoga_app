import 'package:flutter/material.dart';
import 'package:yoga_app/screens/home_screens/components/weekly_routine_card.dart';
import 'components/custom_app_bar.dart';
import 'components/popular_yoga_card.dart';
import 'components/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF4F0ED),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              children: [
                const CustomAppBar(
                  name: 'Jade',
                  tagLine: 'Welcome Back!',
                ),
                const WeeklyRoutineCard(),
                const SearchBar(),
                PopularYogaCards()
              ],
            ),
          ),
        ),
      ),
    );
  }
}


