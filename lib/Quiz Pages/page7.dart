import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:hpdeterminer/Quiz%20Pages/page8.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:hpdeterminer/home.dart';
import 'package:hpdeterminer/main.dart';
import '../bighome.dart';
import 'page2.dart';
import 'page8.dart';
import 'package:hpdeterminer/instructions.dart';
class page7 extends StatelessWidget {
  const page7({Key? key}) : super(key: key);

  _exitdialog(context){
    Alert(
      context: context,
      type: AlertType.warning,
      onWillPopActive: true,
      title: "Are you sure\nyou want to quit ?",
      desc: "All progress until now will be lost",
      buttons: [
        DialogButton(
          child: Text(
            "YES",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: (){
            hp = 25;
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => bighome()),
            );
          },
          color: Color.fromRGBO(0, 179, 134, 1.0),
        ),
        DialogButton(
          child: Text(
            "NO",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }


  _bottomSheet(context){
    showModalBottomSheet(context: context,isDismissible: false, builder: (BuildContext c){
      return WillPopScope(
        onWillPop: () async => false,
        child: Container(
          // width: 375,
          height: 182,

          child: Stack(
              children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      // width: 375,
                        width: MediaQuery.of(context).size.width,
                        height: 182,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.black, Colors.blue.shade900,
                              ]
                          ),
                          // color : Color.fromRGBO(60, 62, 74, 1),
                        )
                    )
                ),
                Center(
                  child: BouncingWidget(
                    duration: Duration(milliseconds: 100),
                    scaleFactor: 1.3,
                    onPressed: () {
                      Timer(Duration(milliseconds: 470), () {
                        // 5 seconds over, navigate to Page2.
                        Navigator.push(context, MaterialPageRoute(builder: (_) => page8()));
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 45),
                      width: 313,
                      height: 62,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color : Color.fromRGBO(255, 86, 86, 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 19),
                        child: Text('CONTINUE',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ubuntu(
                              color: Color.fromRGBO(61, 63, 74, 1),
                              fontSize: 24,
                              letterSpacing: 0, //percentages not used in flutter. defaulting to zero/,
                              fontWeight: FontWeight.bold,
                              height: 1
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                    top: 35,
                    left: 20,
                    child: Text('Proceed to the next Question',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ubuntu(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 23,
                          letterSpacing: 0, //percentages not used in flutter. defaulting to zero/,
                          fontWeight: FontWeight.bold,
                          height: 1
                      ),)
                ),
              ]
          ),
        ),
      );
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: <Widget>[
                  // Figma Flutter Generator Rectangle13Widget - RECTANGLE
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.65,
                      // height: 530,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        color : Color.fromRGBO(0, 0, 0, 1),
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        height: 35,
                        width: 35,
                        alignment: Alignment.topLeft,
                        child: BouncingWidget(
                          duration: Duration(milliseconds: 100),
                          scaleFactor: 1.1,
                          onPressed: () {
                            Timer(Duration(milliseconds: 200), () {
                              // 5 seconds over, navigate to Page2.
                              _exitdialog(context);
                            });
                          },
                          child: Image.asset(
                            'assets/images/Multiply.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        // margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'BACKGROUND',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: LiquidCircularProgressIndicator(
                          value: 0.4666, // Defaults to 0.5.
                          valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent), // Defaults to the current Theme's accentColor.
                          backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                          direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Are You Educated?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.josefinSans(
                        letterSpacing: 1,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 205 ,left: 30, right: 30),
                    child: Image.asset('assets/images/1.png',
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.85,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 270),
                    // margin: EdgeInsets.only(bottom: 45),
                    child: Text('Say a YES,\nIf you’re employed.\nIf you’re educated atleast till\nschooling enough to read/write\nin any particular language.',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 40),
                    child: AnimatedButton(
                      onPress: (){
                        hp = hp + 5;
                        Timer(Duration(milliseconds: 700), () {
                          //  seconds over, navigate to Page2.
                          _bottomSheet(context);
                        });
                      },
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.85,
                      text: 'YES',
                      textStyle: GoogleFonts.ubuntu(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      isReverse: false,
                      selectedBackgroundColor: Colors.black,
                      selectedTextColor: Colors.white,
                      transitionType: TransitionType.LEFT_TO_RIGHT,
                      backgroundColor: Colors.black,
                      borderRadius: 15,
                      selectedGradientColor: LinearGradient(
                          colors: [Color.fromRGBO(10, 38, 137, 100), Colors.greenAccent.shade400]
                      ),
                      // borderWidth: 3,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    child: AnimatedButton(
                      onPress: (){
                        Timer(Duration(milliseconds: 700), () {
                          //  seconds over, navigate to Page2.
                          _bottomSheet(context);
                        });
                      },
                      height: MediaQuery.of(context).size.height * 0.08,
                      width: MediaQuery.of(context).size.width * 0.85,
                      text: 'NO',
                      textStyle: GoogleFonts.ubuntu(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                      isReverse: false,
                      selectedBackgroundColor: Colors.pinkAccent,
                      selectedTextColor: Colors.white,
                      transitionType: TransitionType.LEFT_TO_RIGHT,
                      backgroundColor: Colors.black,
                      borderRadius: 15,
                      selectedGradientColor: LinearGradient(
                          colors: [Color.fromRGBO(10, 38, 137, 100), Color.fromRGBO(212, 0, 0, 100)]
                      ),
                      // borderWidth: 3,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
