import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/home.dart';
import 'package:hpdeterminer/login.dart';
import 'package:hpdeterminer/onboarding/swipe3.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

import '../bighome.dart';

class swipe2 extends StatefulWidget {
  const swipe2({Key? key}) : super(key: key);

  @override
  _swipe2State createState() => _swipe2State();
}

class _swipe2State extends State<swipe2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink,
               Colors.cyanAccent,
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
                // margin: EdgeInsets.only(top: 70, left: 28),
                // height: 285,
                // width: 285,
                alignment: Alignment.topCenter,
                child: Lottie.asset('assets/images/back.json'),
              ),
              Container(
                margin: EdgeInsets.only(top: 115, left: 80),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.6,
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
                    'A GAME-WORLD\nENTITY FOR\nREAL PEOPLE',
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

        ]));
  }
}
