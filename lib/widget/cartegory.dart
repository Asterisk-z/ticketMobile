import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = [
    'All Tickets',
    'Opened',
    'Closed',
    'Pending'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Colors.yellow,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext content, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 30.0,
            ),
            child: Text(
              categories[index],
              style: GoogleFonts.bahianita(color: Colors.white, fontSize: 14.0),
            ),
          );
        },
      ),
    );
  }
}
