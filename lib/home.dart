import 'dart:async';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hpdeterminer/hpvalue.dart';
import 'package:hpdeterminer/main.dart';
import 'package:hpdeterminer/read.dart';
import 'package:hpdeterminer/readpro.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'drawer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'carouselitems.dart';
import 'instructions.dart';
import 'dart:io';


_exit(context){
  Alert(
    context: context,
    onWillPopActive: false,
    type: AlertType.warning,
    title: "Are you sure you want\nto Exit ?",
    buttons: [
      DialogButton(
        child: Text(
          "YES",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: (){
          Timer(Duration(milliseconds: 100), () {
            // 5 seconds over, navigate to Page2.
            SystemNavigator.pop();
          });
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


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: CurvedNavigationBar(
      //   index: 1,
      //   height: 52,
      //   color: Colors.indigo.shade300,
      //   backgroundColor: Colors.white,
      //   items: [
      //     Icon(
      //       Icons.info_outline_rounded,
      //       size: 25,
      //       color: Colors.white,
      //     ),
      //     Icon(Icons.home_rounded, size: 25, color: Colors.white),
      //     Icon(Icons.person, size: 25, color: Colors.white),
      //     Icon(
      //       Icons.exit_to_app_rounded,
      //       size: 25,
      //       color: Colors.white,
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.white,
      key: _key,
      drawer: drawer(),
      body: SafeArea(
        child: WillPopScope(
          onWillPop: ()async=>_exit(context),
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(children: <Widget>[
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: <Widget>[
              //     Container(
              //         margin: EdgeInsets.only(top: 20, left: 23),
              //         height: 25,
              //         width: 25,
              //         child: Material(
              //           color: Colors.white,
              //           child: InkResponse(
              //             containedInkWell: false,
              //             radius: 50,
              //             splashColor: Colors.blue,
              //             child: Image.asset(
              //               'assets/images/open.jpeg',
              //               // color: Colors.black,
              //             ),
              //             onTap: () => _key.currentState!.openDrawer(),
              //           ),
              //         )),
              //     Container(
              //       margin: EdgeInsets.only(top: 20, left: 49),
              //       child: Text(
              //         'HP DETERMINER',
              //         // textAlign: TextAlign.center,
              //         style: GoogleFonts.ubuntu(
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.black,
              //           letterSpacing: 1,
              //         ),
              //       ),
              //     ),
              //     Container(
              //       margin: EdgeInsets.fromLTRB(30, 23, 10, 0),
              //       child: CircleAvatar(
              //         radius: 20,
              //         backgroundImage: AssetImage('assets/images/man.png'),
              //         backgroundColor: Colors.transparent,
              //       ),
              //     )
              //   ],
              // ),

              Container(
                margin: EdgeInsets.only(top: 25),
                child: carousel(),
              ),

              // Figma Flutter Generator Group4Widget - GROUP
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: Text(
                  'CATEGORIES',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              //figma container calculate hp
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                      margin: EdgeInsets.only(top: 14),
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.2,
                      // height: 170,
                      child: Material(
                        color: Colors.white,
                        child: InkResponse(
                          containedInkWell: true,
                          highlightColor: Colors.purple.withOpacity(0),
                          radius: 120,
                          splashColor: Colors.yellowAccent,
                          onTap: () {},
                          child: Stack(alignment: Alignment.center, children: <
                              Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    // padding: MediaQuery.of(context).padding,
                                    width:
                                        MediaQuery.of(context).size.width * 0.85,
                                    height: MediaQuery.of(context).size.height * 0.2,
                                    // height: 142,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      ),
                                      color: Colors.redAccent.shade100
                                          .withOpacity(0.4),
                                      // color: Color.fromRGBO(255, 195, 195, 1),
                                    ))),
                            Positioned(
                                top: 25,
                                left: 28,
                                child: Text(
                                  'CALCULATE HP',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.ubuntu(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 20,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                )),
                            Container(
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(bottom: 19),
                              child: BouncingWidget(
                                duration: Duration(milliseconds: 100),
                                scaleFactor: 0.7,
                                onPressed: () async => {
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
                                              builder: (_) => instructions()));
                                    });
                                  }),
                                },
                                // {
                                //   Timer(Duration(milliseconds: 200), () {
                                //     // 5 seconds over, navigate to Page2.
                                //     Navigator.push(context, MaterialPageRoute(builder: (_) => loading()));
                                //     Timer(Duration(seconds: 4), () {
                                //       // 5 seconds over, navigate to Page2.
                                //       Navigator.push(context, MaterialPageRoute(builder: (_) => instructions()));
                                //     });
                                //   });
                                // },
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                        top: 87,
                                        left: 23,
                                        child: Container(
                                            width: 115,
                                            height: 43,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(9),
                                                topRight: Radius.circular(9),
                                                bottomLeft: Radius.circular(9),
                                                bottomRight: Radius.circular(9),
                                              ),
                                              color: Color.fromRGBO(0, 0, 0, 1),
                                            ))),
                                    Positioned(
                                        top: 101,
                                        left: 35,
                                        child: Text(
                                          'START',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontFamily: 'Ubuntu',
                                              fontSize: 18,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1),
                                        )),
                                    Positioned(
                                      top: 102,
                                      left: 96,
                                      child: SvgPicture.asset(
                                          'assets/images/play.svg',
                                          semanticsLabel: 'vector'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Positioned(
                            //     top: 87,
                            //     left: 23,
                            //     child: Container(
                            //         width: 115,
                            //         height: 43,
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.only(
                            //             topLeft: Radius.circular(9),
                            //             topRight: Radius.circular(9),
                            //             bottomLeft: Radius.circular(9),
                            //             bottomRight: Radius.circular(9),
                            //           ),
                            //           color: Color.fromRGBO(0, 0, 0, 1),
                            //         ))),
                            //
                            //
                            // Positioned(
                            //     top: 99,
                            //     left: 35,
                            //     child: Text(
                            //       'START',
                            //       textAlign: TextAlign.left,
                            //       style: TextStyle(
                            //           color: Color.fromRGBO(255, 255, 255, 1),
                            //           fontFamily: 'Ubuntu',
                            //           fontSize: 15,
                            //           letterSpacing:
                            //           0 /*percentages not used in flutter. defaulting to zero*/,
                            //           fontWeight: FontWeight.normal,
                            //           height: 1),
                            //     )),
                            // Positioned(
                            //   top: 101,
                            //   left: 96,
                            //   child: SvgPicture.asset('assets/images/play.svg',
                            //       semanticsLabel: 'vector'),
                            // ),
                            Positioned(
                                top: 53,
                                left: 28,
                                child: Text(
                                  '10 EASY QUESTIONS',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.ubuntu(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 14,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                )),
                            Positioned(
                                top: 26,
                                left: 185,
                                child: Container(
                                    width: 104,
                                    height: 104,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/category.png'),
                                          fit: BoxFit.fitWidth),
                                    ))),
                          ]),
                        ),
                      )),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Figma Flutter Generator Group5Widget - GROUP

                  Container(
                      // padding: MediaQuery.of(context).padding,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 15, left: 10),
                      width: MediaQuery.of(context).size.width * 0.42,
                      height: MediaQuery.of(context).size.height * 0.23,
                      // height: 205,
                      child: Material(
                        color: Colors.white,
                        child: InkResponse(
                          containedInkWell: true,
                          highlightColor: Colors.red.withOpacity(0),
                          radius: 70,
                          splashColor: Colors.orange.shade400,
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => hpval()),
                            );
                          },
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.42,
                                    height:
                                        MediaQuery.of(context).size.height * 0.23,
                                    // width: 153,
                                    // height: 177,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                      ),
                                      color: Colors.lightBlueAccent.shade100
                                          .withOpacity(0.6),
                                      // color: Color.fromRGBO(207, 237, 255, 1).withOpacity(0.6),
                                    ))),
                            Positioned(
                                top: 21,
                                left: 18,
                                child: Text(
                                  'CHECK HP\nSTATS',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.ubuntu(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 18,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                )),
                            Positioned(
                                top: 78,
                                left: 57,
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Image.asset('assets/images/screen.png'),
                                )),
                          ]),
                        ),
                      )),

                  // Figma Flutter Generator Group15Widget - GROUP
                  Stack(
                    children: [
                      Material(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: InkResponse(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => readpro()),
                          ),
                          containedInkWell: true,
                          highlightColor: Colors.purple.withOpacity(0),
                          radius: 65,
                          splashColor: Colors.yellowAccent,
                          child: Container(
                              // padding: MediaQuery.of(context).padding,
                              margin: EdgeInsets.only(top: 15, left: 11),
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: MediaQuery.of(context).size.height * 0.23,
                              // width: 153,
                              // height: 205,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: MediaQuery.of(context).size.width *
                                            0.42,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.23,
                                        // width: 153,
                                        // height: 177,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.42,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.23,
                                                  // width: 153,
                                                  // height: 177,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(25),
                                                      topRight:
                                                          Radius.circular(25),
                                                      bottomLeft:
                                                          Radius.circular(25),
                                                      bottomRight:
                                                          Radius.circular(25),
                                                    ),
                                                    color: Color.fromRGBO(
                                                            193, 188, 255, 1)
                                                        .withOpacity(0.5),
                                                  ))),
                                        ]))),
                                Positioned(
                                    top: 21,
                                    left: 10,
                                    child: Text(
                                      'READ\nCONCEPT',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.ubuntu(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 18,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.bold,
                                          height: 1),
                                    )),
                                // Positioned(
                                //     top: 82,
                                //     left: 72,
                                //     child: Container(
                                //         width: 80,
                                //         height: 80,
                                //         decoration: BoxDecoration(
                                //           image: DecorationImage(
                                //               image: AssetImage(
                                //                   'assets/images/Information1.png'),
                                //               fit: BoxFit.fitWidth),
                                //         ))),
                              ])),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.2,
                        // height: 80,
                        // width: 80,
                        margin: EdgeInsets.only(left: 100, top: 95),
                        child: GestureDetector(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>readpro())),
                            child: Image.asset('assets/images/Information1.png')),
                      ),
                    ],
                  ),
                ],
              ),
              // Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
            ]),
          ),
        ),
      ),
    );
  }
}

class info extends StatelessWidget {
  const info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hfuhfe'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}





// class fhrj extends StatelessWidget {
//   const fhrj({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ElevatedButton(
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//                 top: 99,
//                 left: 35,
//                 child: Text(
//                   'START',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Color.fromRGBO(255, 255, 255, 1),
//                       fontFamily: 'Ubuntu',
//                       fontSize: 15,
//                       letterSpacing:
//                           0 /*percentages not used in flutter. defaulting to zero*/,
//                       fontWeight: FontWeight.normal,
//                       height: 1),
//                 )),
//             Positioned(
//               top: 101,
//               left: 96,
//               child: SvgPicture.asset('assets/images/play.svg',
//                   semanticsLabel: 'vector'),
//             ),
//           ],
//         ),
//         onPressed: () => profile(),
//       ),
//     );
//   }
// }

class loading extends StatelessWidget {
  const loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SpinKitCubeGrid(
          size: 45.0,
          color: Colors.blue.shade900,
        ),
      ),
    );
  }
}
