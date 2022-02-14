import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/home.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Quiz Pages/page1.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'main.dart';

class instructions extends StatelessWidget {
  const instructions({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          return !await  Navigator.push(context, MaterialPageRoute(builder: (_) => bighome()));
        },



        child: Scaffold(

          body: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/newios.png',fit: BoxFit.fill),
              ),
              Container(
                margin: EdgeInsets.only(top: 75),
                alignment: Alignment.topCenter,
                child: Text('INSTRUCTIONS',
                  style: GoogleFonts.yanoneKaffeesatz(
                    decoration: TextDecoration.none,
                    fontSize: 28,
                    letterSpacing: 2.5,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 370,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    viewportFraction: 0.8,
                  ),
                  items: [
                    Stack(
                      children: <Widget>[
                        // Figma Flutter Generator Rectangle12Widget - RECTANGLE
                        Container(
                          // width: 319,
                          // height: 360,
                          width: MediaQuery.of(context).size.width * 0.83,
                          height: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(27),
                              topRight: Radius.circular(27),
                              bottomLeft: Radius.circular(27),
                              bottomRight: Radius.circular(27),
                            ),
                            color : Color.fromRGBO(245, 243, 247, 0.800000011920929).withOpacity(0.70),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 45),
                          child: Text('There will be 15 simple\n"yes-no" questions.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              decoration: TextDecoration.none,
                              fontSize: 24,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 130),
                              // height: 195,
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.72,
                              // width: 270,
                              child: Image.asset('assets/images/bg.png'),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 115),
                          child: Text('You have to select\neither YES or a NO for\neach question.',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              fontSize: 20.5,
                              letterSpacing: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 8,left: 8),
                          // width: 319,
                          // height: 360,
                          width: MediaQuery.of(context).size.width * 0.83,
                          height: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(27),
                              topRight: Radius.circular(27),
                              bottomLeft: Radius.circular(27),
                              bottomRight: Radius.circular(27),
                            ),
                            color : Color.fromRGBO(245, 243, 247, 0.800000011920929).withOpacity(0.65),
                          ),
                        ),

                        Container(alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 52),
                          child: Text('Questions will be\nbased on :',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.teko(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                decoration: TextDecoration.none,
                                fontSize: 37,
                                letterSpacing: 1.5 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),
                        ),

                        Container(
                          alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 135, left: 10),
                            // width: 250,
                            // height: 195,
                            width: MediaQuery.of(context).size.width * 0.715,
                            height: MediaQuery.of(context).size.height * 0.23,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              color : Color.fromRGBO(192, 96, 188, 0.75).withOpacity(0.70),
                            )
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 65),
                          child:       // Figma Flutter Generator 1personal2background3skillls4lifestyleWidget - TEXT
                          Text('1 -  PERSONAL\n2 - BACKGROUND\n3 - SKILLLS\n4 - LIFESTYLE',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              fontSize: 20.5,
                              letterSpacing: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Figma Flutter Generator Group17Widget - GROUP
                    Stack(
                      children: <Widget>[
                        // Figma Flutter Generator Rectangle12Widget - RECTANGLE
                        Container(
                          // width: 319,
                          // height: 360,
                          width: MediaQuery.of(context).size.width * 0.83,
                          height: MediaQuery.of(context).size.height * 0.45,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(27),
                              topRight: Radius.circular(27),
                              bottomLeft: Radius.circular(27),
                              bottomRight: Radius.circular(27),
                            ),
                            color : Color.fromRGBO(245, 243, 247, 0.800000011920929).withOpacity(0.7),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 25),
                          child: Image.asset('assets/images/caution.png',height: 100, width: 107,)
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(top: 130),
                              // height: 195,
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width * 0.72,
                              // width: 270,
                              child: Image.asset('assets/images/bg.png',color: Colors.redAccent.shade700,),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 115),
                          child: Text("An answer or a\nfeedback to a question\nonce submitted, can't\nbe undone",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mulish(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              fontSize: 20.5,
                              letterSpacing: 1,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 535),
                child: BouncingWidget(
                  duration: Duration(milliseconds: 100),
                  scaleFactor: 1.2,
                  onPressed: () async => {
                    res = 0,
                    Timer(Duration(milliseconds: 200), () {

                      showGeneralDialog(
                          context: context,
                          barrierDismissible: false,
                          // barrierLabel: MaterialLocalizations.of(context)
                          //     .modalBarrierDismissLabel,
                          // barrierColor: Colors.black45,
                          // transitionDuration: const Duration(milliseconds: 200),
                          pageBuilder: (BuildContext buildContext,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return SafeArea(
                              child: Container(
                                height: MediaQuery.of(context)
                                    .size
                                    .height,
                                width: MediaQuery.of(context)
                                    .size
                                    .width,
                                color:
                                Colors.black.withOpacity(0.5),
                                child: SpinKitWave(
                                  size: 45.0,
                                  color: Colors.indigoAccent.shade700,
                                ),
                              ),
                            );
                          });

                      Timer(Duration(seconds: 1), () {
                        // 5 seconds over, navigate to Page2.
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => page1()));
                      });
                    }),
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 15),
                    // width: 313,
                    width: MediaQuery.of(context).size.width * 0.78,
                    height: 57,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color : Color.fromRGBO(28, 152, 242,0.800000011920929),
                    ),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(top: 1, left: 45),
                          child: Text('CONTINUE',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.ubuntu(
                                color: Color.fromRGBO(61, 63, 74, 1),
                                decoration: TextDecoration.none,
                                fontSize: 26,
                                letterSpacing: 0, //percentages not used in flutter. defaulting to zero/,
                                fontWeight: FontWeight.bold,
                                height: 1
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          margin: EdgeInsets.only(left: 40),
                          child: Image.asset('assets/images/Nextpage.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
