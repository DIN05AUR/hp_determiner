import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/home.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

import '../bighome.dart';
import '../login.dart';
import '../main.dart';

class swipe3 extends StatefulWidget {
  const swipe3({Key? key}) : super(key: key);

  @override
  _swipe3State createState() => _swipe3State();
}

class _swipe3State extends State<swipe3> {
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
                Colors.redAccent.shade700.withOpacity(0.8),
                // Color.fromRGBO(255, 5, 5, 0),
                Colors.yellow,
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
                    'UNVEIL THE\nSURVIVOR OF\nLIFE WITHIN\nYOU !',
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
                    // MySharedPreferences.instance
                    //     .setBooleanValue("isfirstRun", true);

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
                        'START',
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
