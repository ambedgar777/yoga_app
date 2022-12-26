import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 54,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade300,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              spreadRadius: 1,
              offset: const Offset(0, 5)
            )
          ]
        ),
        child: TextField(
          decoration: InputDecoration(
            hintStyle: GoogleFonts.aBeeZee(
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.bold
            ),
            border: InputBorder.none,
            icon: const Icon(Icons.search),
            hintText: 'Search Yoga',
          ),
        ),
      ),
    );
  }
}
