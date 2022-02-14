import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/home.dart';
import 'package:hpdeterminer/login.dart';
import 'package:hpdeterminer/onboarding/swipe2.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

import 'onboardingmain.dart';

class swipe1 extends StatefulWidget {
  const swipe1({Key? key}) : super(key: key);

  @override
  _swipe1State createState() => _swipe1State();
}

class _swipe1State extends State<swipe1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blue,
                // Color.fromRGBO(255, 5, 5, 0),
                Color.fromRGBO(255, 0, 0, 1),
                Colors.black,
              ]),
        ),
        child: Stack(children: <Widget>[
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70, left: 36),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 0.8,
                // height: 285,
                // width: 285,
                alignment: Alignment.topCenter,
                child: Lottie.asset('assets/images/back.json'),
              ),
              Container(
                margin: EdgeInsets.only(top: 115, left: 80),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.6,
                // height: 210,
                // width: 210,
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/group.png'),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 45),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'EXPLORE THE\nPOTENTIAL OF\nYOUR BODY',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.londrinaSolid(
                        decoration: TextDecoration.none,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 42,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  )),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width * 0.72,
                height: MediaQuery.of(context).size.height * 0.072,
                // height: 100,
                // width: 100,
                child: BouncingWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  scaleFactor: 1.3,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.72,
                    height: MediaQuery.of(context).size.height * 0.072,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      color: Colors.blue.shade800,
                      // color : Color.fromRGBO(0, 255, 239, 0.5),
                    ),
                    child: Center(
                      child: Text(
                        'SKIP',
                        style: GoogleFonts.ubuntu(
                            decoration: TextDecoration.none,
                            letterSpacing: 2,
                            fontSize: 29,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Container(
          //   // margin: EdgeInsets.only(top: 670, left: 134, bottom: 30),
          //   alignment: Alignment.bottomCenter,
          //   height: MediaQuery.of(context).size.height * 0.07,
          //   width: MediaQuery.of(context).size.width * 0.3,
          //   // height: 100,
          //   // width: 100,
          //   child: BouncingWidget(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => bighome()),
          //       );
          //     },
          //     scaleFactor: 1.3,
          //     duration: Duration(milliseconds: 300),
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: Colors.blue.withOpacity(0.70),
          //         borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(9),
          //           topRight: Radius.circular(9),
          //           bottomLeft: Radius.circular(9),
          //           bottomRight: Radius.circular(9),
          //         ),
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.all(13.0),
          //         child: Text(
          //           '    SKIP    ',
          //           style: GoogleFonts.ubuntu(
          //               fontSize: 18,
          //               decoration: TextDecoration.none,
          //               color: Colors.white),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ]));
  }
}
