import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/home.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

class swipe4 extends StatefulWidget {
  const swipe4({Key? key}) : super(key: key);

  @override
  _swipe4State createState() => _swipe4State();
}

class _swipe4State extends State<swipe4> {
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
                Colors.white,
               Colors.purple,
                Colors.black,
              ]),
        ),
        child: Stack(children: <Widget>[
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70, left: 28),
                height: 285,
                width: 285,
                alignment: Alignment.topCenter,
                child: Lottie.asset('assets/images/back.json'),
              ),
              Container(
                margin: EdgeInsets.only(top: 115, left: 68),
                height: 210,
                width: 210,
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/group.png'),
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: 130),
              alignment: Alignment.bottomCenter,
              child: Text(
                'DETERMINE\nYOUR HP AND\nACT\nACCORDINGLY',
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
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 660, left: 25, bottom: 30),
                alignment: Alignment.bottomLeft,
                height: 100,
                width: 100,
                child: BouncingWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  },
                  scaleFactor: 1.3,
                  duration: Duration(milliseconds: 180),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.75),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9),
                        bottomLeft: Radius.circular(9),
                        bottomRight: Radius.circular(9),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        'SKIP',
                        style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            decoration: TextDecoration.none,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 660, left: 105, bottom: 30),
                alignment: Alignment.bottomRight,
                height: 100,
                width: 100,
                child: BouncingWidget(
                  onPressed: () {},
                  scaleFactor: 1.3,
                  duration: Duration(milliseconds: 180),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.75),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(9),
                        topRight: Radius.circular(9),
                        bottomLeft: Radius.circular(9),
                        bottomRight: Radius.circular(9),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text(
                        'NEXT',
                        style: GoogleFonts.ubuntu(
                            fontSize: 18,
                            decoration: TextDecoration.none,
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
