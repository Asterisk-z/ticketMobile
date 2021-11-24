import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_ticket/widget/cartegory.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'All Tickets info',
          style: GoogleFonts.comingSoon(
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
        ],
      ),
    );
  }
}
