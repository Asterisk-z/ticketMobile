import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// import 'package:flutter/svg';
class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var cardTextStyle = TextStyle();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: new BorderRadius.circular(19.0),
              color: Colors.yellow,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 74,
                    margin: EdgeInsets.only(bottom: 100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 32,
                          backgroundImage:
                              AssetImage('assets/images/avater.jpg'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Andor Ofre',
                              style: GoogleFonts.handlee(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              'andorofre@gmail.com',
                              style: GoogleFonts.handlee(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                            Text(
                              '07047474422',
                              style: GoogleFonts.handlee(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 7,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(MdiIcons.airport,
                                    size: 50, color: Colors.green[200]),
                                Text(
                                  'Total Tickets',
                                  style: GoogleFonts.philosopher(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.grey,
                                      height: 2),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 7,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(MdiIcons.accountCheck,
                                    size: 50, color: Colors.blueGrey),
                                Text(
                                  'Open Tickets',
                                  style: GoogleFonts.philosopher(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.grey,
                                      height: 2),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 7,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(MdiIcons.accountMultipleRemove,
                                    size: 50, color: Colors.red),
                                Text(
                                  'Close Tickets',
                                  style: GoogleFonts.philosopher(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.grey,
                                      height: 2),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 7,
                            color: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(MdiIcons.accountCashOutline,
                                    size: 50, color: Colors.yellow[200]),
                                Text(
                                  'Pending Tickets',
                                  style: GoogleFonts.philosopher(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.grey,
                                      height: 2),
                                ),
                              ],
                            ),
                          )
                        ],
                        crossAxisCount: 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// Text(
//                                   'Total Tickets',
//                                   style: GoogleFonts.ubuntuMono(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       fontStyle: FontStyle.normal,
//                                       height: 2),
//                                 ),