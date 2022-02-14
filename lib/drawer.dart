// import 'dart:async';
// import 'package:bouncing_widget/bouncing_widget.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/animation.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hpdeterminer/bighome.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'home.dart';
// import 'main.dart';
// import 'package:hpdeterminer/login.dart';
// import 'login.dart';
//
// class drawern extends StatefulWidget {
//   const drawern({Key? key}) : super(key: key);
//
//   @override
//   _drawernState createState() => _drawernState();
// }
//
// class _drawernState extends State<drawern> {
//
//
//   _exit(context){
//     Alert(
//       context: context,
//       onWillPopActive: false,
//       type: AlertType.warning,
//       title: "Are you sure you want\nto Exit ?",
//       buttons: [
//         DialogButton(
//           child: Text(
//             "YES",
//             style: TextStyle(color: Colors.white, fontSize: 20),
//           ),
//           onPressed: (){
//             Timer(Duration(milliseconds: 100), () {
//               // 5 seconds over, navigate to Page2.
//               SystemNavigator.pop();
//             });
//           },
//           color: Color.fromRGBO(0, 179, 134, 1.0),
//         ),
//         DialogButton(
//           child: Text(
//             "NO",
//             style: TextStyle(color: Colors.white, fontSize: 20),
//           ),
//           onPressed: () => Navigator.pop(context),
//           gradient: LinearGradient(colors: [
//             Color.fromRGBO(116, 116, 191, 1.0),
//             Color.fromRGBO(52, 138, 199, 1.0)
//           ]),
//         )
//       ],
//     ).show();
//   }
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       child: Drawer(
//         child: ListView(
//
//           children: [
//             Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       child: Image.asset(
//                         'assets/images/img.png',
//                       ),
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       margin: EdgeInsets.only(top: 40),
//                       child: Text('MENU',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.mulish(
//                               fontSize: 19,
//                               color: Colors.white,
//                               letterSpacing: 2)),
//                     ),
//                     Container(
//                       padding: EdgeInsets.fromLTRB(30, 110, 30, 100),
//                       alignment: Alignment.center,
//                       child: CircleAvatar(
//                         radius: 65,
//                         backgroundImage: AssetImage(
//                           'assets/images/man.png',
//                         ),
//                         backgroundColor: Colors.transparent,
//                       ),
//                     ),
//                     Container(
//                       alignment: Alignment.center,
//                       padding: EdgeInsets.only(top: 255),
//                       child: Text('$name',
//                           style: GoogleFonts.mulish(
//                               fontSize: 19,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               letterSpacing: 1)),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Container(
//                           alignment: Alignment.center,
//                           child: BouncingWidget(
//                             duration: Duration(milliseconds: 100),
//                             scaleFactor: 1.2,
//                             onPressed: () {
//                               Timer(Duration(milliseconds: 200), () {
//                                 // 5 seconds over, navigate to Page2.
//                                 Navigator.push(context, MaterialPageRoute(builder: (_) => bighome()));
//                               });
//                             },
//                             child: Container(
//                               alignment: Alignment.center,
//                               margin: EdgeInsets.only(top: 370),
//                               width: MediaQuery.of(context).size.width * 0.75,
//                               height: MediaQuery.of(context).size.height * 0.065,
//                               // width: 300,
//                               // height: 50,
//                               child: Stack(children: <Widget>[
//                                 Positioned(
//                                     top: 0,
//                                     left: 0,
//                                     child: Container(
//                                         width: MediaQuery.of(context).size.width * 0.75,
//                                         height: MediaQuery.of(context).size.height * 0.065,
//                                         // width: 300,
//                                         // height: 50,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.only(
//                                             topLeft: Radius.circular(38),
//                                             topRight: Radius.circular(38),
//                                             bottomLeft: Radius.circular(38),
//                                             bottomRight: Radius.circular(38),
//                                           ),
//                                           color:
//                                           Color.fromRGBO(196, 196, 196, 1),
//                                         ))),
//                                 Positioned(
//                                     top: 12,
//                                     left: 44,
//                                     child: Container(
//                                       width: 30,
//                                       height: 30,
//                                       child: Image.asset(
//                                         'assets/images/Homepage.png',
//                                         fit: BoxFit.fitWidth,
//                                       ),
//                                     )),
//                                 Positioned(
//                                     top: 17,
//                                     left: 106,
//                                     child: Text(
//                                       'HOME',
//                                       textAlign: TextAlign.left,
//                                       style: GoogleFonts.ubuntu(
//                                           color: Color.fromRGBO(0, 0, 0, 1),
//                                           fontSize: 19,
//                                           letterSpacing: 0.30000001192092896,
//                                           fontWeight: FontWeight.bold,
//                                           height: 1.0526315789473684),
//                                     )),
//                               ]),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.center,
//                           child: BouncingWidget(
//                             duration: Duration(milliseconds: 100),
//                             scaleFactor: 1.2,
//                             onPressed: () {
//                               print("onPressed");
//                             },
//                             child: Container(
//                                 margin: EdgeInsets.only(top: 17),
//                                 // width: 300,
//                                 // height: 50,
//                                 width: MediaQuery.of(context).size.width * 0.75,
//                                 height: MediaQuery.of(context).size.height * 0.065,
//                                 child: Stack(children: <Widget>[
//                                   Positioned(
//                                       top: 0,
//                                       left: 0,
//                                       child: Container(
//                                           // width: 300,
//                                           // height: 50,
//                                           width: MediaQuery.of(context).size.width * 0.75,
//                                           height: MediaQuery.of(context).size.height * 0.065,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(38),
//                                               topRight: Radius.circular(38),
//                                               bottomLeft: Radius.circular(38),
//                                               bottomRight: Radius.circular(38),
//                                             ),
//                                             color: Color.fromRGBO(
//                                                 196, 196, 196, 1),
//                                           ))),
//                                   Positioned(
//                                       top: 12,
//                                       left: 43,
//                                       child: Container(
//                                           width: 27.355623245239258,
//                                           height: 25,
//                                           decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage(
//                                                     'assets/images/User.png'),
//                                                 fit: BoxFit.fitWidth),
//                                           ))),
//                                   Positioned(
//                                       top: 17,
//                                       left: 101,
//                                       child: Text(
//                                         'PROFILE',
//                                         textAlign: TextAlign.left,
//                                         style: GoogleFonts.ubuntu(
//                                             color: Color.fromRGBO(0, 0, 0, 1),
//                                             fontSize: 19,
//                                             letterSpacing: 0.30000001192092896,
//                                             fontWeight: FontWeight.bold,
//                                             height: 1.0526315789473684),
//                                       )),
//                                 ])),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.center,
//                           child: BouncingWidget(
//                             duration: Duration(milliseconds: 100),
//                             scaleFactor: 1.2,
//                             onPressed: () {
//                               print("onPressed");
//                             },
//                             child: Container(
//                                 margin: EdgeInsets.only(top: 17),
//                                 // width: 300,
//                                 // height: 50,
//                                 width: MediaQuery.of(context).size.width * 0.75,
//                                 height: MediaQuery.of(context).size.height * 0.065,
//                                 child: Stack(children: <Widget>[
//                                   Positioned(
//                                       top: 0,
//                                       left: 0,
//                                       child: Container(
//                                           // width: 300,
//                                           // height: 50,
//                                           width: MediaQuery.of(context).size.width * 0.75,
//                                           height: MediaQuery.of(context).size.height * 0.065,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(38),
//                                               topRight: Radius.circular(38),
//                                               bottomLeft: Radius.circular(38),
//                                               bottomRight: Radius.circular(38),
//                                             ),
//                                             color: Color.fromRGBO(
//                                                 196, 196, 196, 1),
//                                           ))),
//                                   Positioned(
//                                       top: 12.5,
//                                       left: 40.12158203125,
//                                       child: Container(
//                                           width: 27.355623245239258,
//                                           height: 25,
//                                           decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage(
//                                                     'assets/images/Statistics.png'),
//                                                 fit: BoxFit.fitWidth),
//                                           ))),
//                                   Positioned(
//                                       top: 9,
//                                       left: 102,
//                                       child: Text(
//                                         'HOW IT WORKS ?',
//                                         textAlign: TextAlign.left,
//                                         style: GoogleFonts.ubuntu(
//                                             color: Color.fromRGBO(0, 0, 0, 1),
//                                             fontSize: 16,
//                                             letterSpacing: 0.30000001192092896,
//                                             fontWeight: FontWeight.bold,
//                                             height: 1.25),
//                                       )),
//                                   Positioned(
//                                       top: 25,
//                                       left: 102,
//                                       child: Text(
//                                         'See Marking Strategy',
//                                         textAlign: TextAlign.left,
//                                         style: TextStyle(
//                                             color: Color.fromRGBO(0, 0, 0, 1),
//                                             fontFamily: 'Ubuntu',
//                                             fontSize: 11,
//                                             letterSpacing: 0.30000001192092896,
//                                             fontWeight: FontWeight.bold,
//                                             height: 1.8181818181818181),
//                                       )),
//                                 ])),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.center,
//                           child: BouncingWidget(
//                             duration: Duration(milliseconds: 100),
//                             scaleFactor: 1.2,
//                             onPressed: () {
//                               print("onPressed");
//                             },
//                             child: Container(
//                                 margin: EdgeInsets.only(top: 17),
//                                 // width: 300,
//                                 // height: 50,
//                                 width: MediaQuery.of(context).size.width * 0.75,
//                                 height: MediaQuery.of(context).size.height * 0.065,
//                                 child: Stack(children: <Widget>[
//                                   Positioned(
//                                       top: 0,
//                                       left: 0,
//                                       child: Container(
//                                           // width: 300,
//                                           // height: 50,
//                                           width: MediaQuery.of(context).size.width * 0.75,
//                                           height: MediaQuery.of(context).size.height * 0.065,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(38),
//                                               topRight: Radius.circular(38),
//                                               bottomLeft: Radius.circular(38),
//                                               bottomRight: Radius.circular(38),
//                                             ),
//                                             color: Color.fromRGBO(
//                                                 196, 196, 196, 1),
//                                           ))),
//                                   Positioned(
//                                       top: 12.5,
//                                       left: 40.12158203125,
//                                       child: Container(
//                                           width: 27.355623245239258,
//                                           height: 25,
//                                           decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage(
//                                                     'assets/images/Bookstack.png'),
//                                                 fit: BoxFit.fitWidth),
//                                           ))),
//                                   Positioned(
//                                       top: 14,
//                                       left: 101,
//                                       child: Text(
//                                         'READ CONCEPT',
//                                         textAlign: TextAlign.left,
//                                         style: GoogleFonts.ubuntu(
//                                             fontSize: 19,
//                                             color: Color.fromRGBO(0, 0, 0, 1),
//                                             letterSpacing: 0.30000001192092896,
//                                             fontWeight: FontWeight.bold,
//                                             height: 1.0526315789473684),
//                                       )),
//                                 ])),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.center,
//                           child: BouncingWidget(
//                             duration: Duration(milliseconds: 100),
//                             scaleFactor: 1.2,
//                             onPressed: () {
//                               print("onPressed");
//                             },
//                             child: Container(
//                                 margin: EdgeInsets.only(top: 17),
//                                 // width: 300,
//                                 // height: 50,
//                                 width: MediaQuery.of(context).size.width * 0.75,
//                                 height: MediaQuery.of(context).size.height * 0.065,
//                                 child: Stack(children: <Widget>[
//                                   Positioned(
//                                       top: 0,
//                                       left: 0,
//                                       child: Container(
//                                           // width: 300,
//                                           // height: 50,
//                                           width: MediaQuery.of(context).size.width * 0.75,
//                                           height: MediaQuery.of(context).size.height * 0.065,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(38),
//                                               topRight: Radius.circular(38),
//                                               bottomLeft: Radius.circular(38),
//                                               bottomRight: Radius.circular(38),
//                                             ),
//                                             color: Color.fromRGBO(
//                                                 196, 196, 196, 1),
//                                           ))),
//                                   Positioned(
//                                       top: 17,
//                                       left: 101,
//                                       child: Text(
//                                         'ABOUT US',
//                                         textAlign: TextAlign.left,
//                                         style: TextStyle(
//                                             color: Color.fromRGBO(0, 0, 0, 1),
//                                             fontSize: 19,
//                                             letterSpacing: 0.30000001192092896,
//                                             fontWeight: FontWeight.bold,
//                                             height: 1.0526315789473684),
//                                       )),
//                                   Positioned(
//                                       top: 10,
//                                       left: 40,
//                                       child: Container(
//                                           width: 30,
//                                           height: 30,
//                                           decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage(
//                                                     'assets/images/Highimportance.png'),
//                                                 fit: BoxFit.fitWidth),
//                                           ))),
//                                 ])),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.center,
//                           child: BouncingWidget(
//                             duration: Duration(milliseconds: 100),
//                             scaleFactor: 1.2,
//                             onPressed: () {
//                               Timer(Duration(milliseconds: 200), () {
//                                 // 5 seconds over, navigate to Page2.
//                                 _exit(context);
//                               });
//                             },
//                             child: Container(
//                                 margin: EdgeInsets.only(top: 17),
//                                 // width: 300,
//                                 // height: 50,
//                                 width: MediaQuery.of(context).size.width * 0.75,
//                                 height: MediaQuery.of(context).size.height * 0.065,
//                                 child: Stack(children: <Widget>[
//                                   Positioned(
//                                       top: 0,
//                                       left: 0,
//                                       child: Container(
//                                           // width: 300,
//                                           // height: 50,
//                                           width: MediaQuery.of(context).size.width * 0.75,
//                                           height: MediaQuery.of(context).size.height * 0.065,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(38),
//                                               topRight: Radius.circular(38),
//                                               bottomLeft: Radius.circular(38),
//                                               bottomRight: Radius.circular(38),
//                                             ),
//                                             color: Color.fromRGBO(
//                                                 196, 196, 196, 1),
//                                           ))),
//                                   Positioned(
//                                       top: 12,
//                                       left: 41,
//                                       child: Container(
//                                           width: 27.355623245239258,
//                                           height: 25,
//                                           decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: AssetImage(
//                                                     'assets/images/Exit.png'),
//                                                 fit: BoxFit.fitWidth),
//                                           ))),
//                                   Positioned(
//                                       top: 15,
//                                       left: 101,
//                                       child: Text(
//                                         'EXIT',
//                                         textAlign: TextAlign.left,
//                                         style: GoogleFonts.ubuntu(
//                                             color: Color.fromRGBO(0, 0, 0, 1),
//                                             fontSize: 19,
//                                             letterSpacing: 0.30000001192092896,
//                                             fontWeight: FontWeight.bold,
//                                             height: 1.0526315789473684),
//                                       )),
//                                 ])),
//                           ),
//                         ),
//                       ],
//                     ),
//                     // SingleChildScrollView(
//                     //   child: Column(
//                     //     children: <Widget>[
//                           // Figma Flutter Generator 1 - GROUP
//                           // Container(
//                           //     alignment: Alignment.center,
//                           //     margin: EdgeInsets.only(top: 358, left: 35),
//                           //     width: 300,
//                           //     height: 50,
//                           //     child: Stack(children: <Widget>[
//                           //       Positioned(
//                           //           top: 0,
//                           //           left: 0,
//                           //           child: Container(
//                           //               width: 300,
//                           //               height: 50,
//                           //               decoration: BoxDecoration(
//                           //                 borderRadius: BorderRadius.only(
//                           //                   topLeft: Radius.circular(38),
//                           //                   topRight: Radius.circular(38),
//                           //                   bottomLeft: Radius.circular(38),
//                           //                   bottomRight: Radius.circular(38),
//                           //                 ),
//                           //                 color:
//                           //                     Color.fromRGBO(196, 196, 196, 1),
//                           //               ))),
//                           //       Positioned(
//                           //           top: 12,
//                           //           left: 44,
//                           //           child: Container(
//                           //             width: 30,
//                           //             height: 30,
//                           //             child: Image.asset(
//                           //               'assets/images/Homepage.png',
//                           //               fit: BoxFit.fitWidth,
//                           //             ),
//                           //           )),
//                           //       Positioned(
//                           //           top: 17,
//                           //           left: 106,
//                           //           child: Text(
//                           //             'HOME',
//                           //             textAlign: TextAlign.left,
//                           //             style: GoogleFonts.ubuntu(
//                           //                 color: Color.fromRGBO(0, 0, 0, 1),
//                           //                 fontSize: 19,
//                           //                 letterSpacing: 0.30000001192092896,
//                           //                 fontWeight: FontWeight.bold,
//                           //                 height: 1.0526315789473684),
//                           //           )),
//                           //     ]),
//                           //   ),
//
//                             // Container(
//                             //     margin: EdgeInsets.only(top: 23, left: 35),
//                             //     width: 300,
//                             //     height: 50,
//                             //     child: Stack(children: <Widget>[
//                             //       Positioned(
//                             //           top: 0,
//                             //           left: 0,
//                             //           child: Container(
//                             //               width: 300,
//                             //               height: 50,
//                             //               decoration: BoxDecoration(
//                             //                 borderRadius: BorderRadius.only(
//                             //                   topLeft: Radius.circular(38),
//                             //                   topRight: Radius.circular(38),
//                             //                   bottomLeft: Radius.circular(38),
//                             //                   bottomRight: Radius.circular(38),
//                             //                 ),
//                             //                 color: Color.fromRGBO(
//                             //                     196, 196, 196, 1),
//                             //               ))),
//                             //       Positioned(
//                             //           top: 12,
//                             //           left: 43,
//                             //           child: Container(
//                             //               width: 27.355623245239258,
//                             //               height: 25,
//                             //               decoration: BoxDecoration(
//                             //                 image: DecorationImage(
//                             //                     image: AssetImage(
//                             //                         'assets/images/User.png'),
//                             //                     fit: BoxFit.fitWidth),
//                             //               ))),
//                             //       Positioned(
//                             //           top: 17,
//                             //           left: 101,
//                             //           child: Text(
//                             //             'PROFILE',
//                             //             textAlign: TextAlign.left,
//                             //             style: GoogleFonts.ubuntu(
//                             //                 color: Color.fromRGBO(0, 0, 0, 1),
//                             //                 fontSize: 19,
//                             //                 letterSpacing: 0.30000001192092896,
//                             //                 fontWeight: FontWeight.bold,
//                             //                 height: 1.0526315789473684),
//                             //           )),
//                             //     ])),
//                             // onTap: (){
//                             //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => profile()));
//                             // },
//
//                           // FIGMA GENERATOR 2
//
//                           // Figma Flutter Generator 3 - GROUP
//                           // Container(
//                           //       margin: EdgeInsets.only(top: 23, left: 35),
//                           //       width: 300,
//                           //       height: 50,
//                           //       child: Stack(children: <Widget>[
//                           //         Positioned(
//                           //             top: 0,
//                           //             left: 0,
//                           //             child: Container(
//                           //                 width: 300,
//                           //                 height: 50,
//                           //                 decoration: BoxDecoration(
//                           //                   borderRadius: BorderRadius.only(
//                           //                     topLeft: Radius.circular(38),
//                           //                     topRight: Radius.circular(38),
//                           //                     bottomLeft: Radius.circular(38),
//                           //                     bottomRight: Radius.circular(38),
//                           //                   ),
//                           //                   color: Color.fromRGBO(
//                           //                       196, 196, 196, 1),
//                           //                 ))),
//                           //         Positioned(
//                           //             top: 12.5,
//                           //             left: 40.12158203125,
//                           //             child: Container(
//                           //                 width: 27.355623245239258,
//                           //                 height: 25,
//                           //                 decoration: BoxDecoration(
//                           //                   image: DecorationImage(
//                           //                       image: AssetImage(
//                           //                           'assets/images/Statistics.png'),
//                           //                       fit: BoxFit.fitWidth),
//                           //                 ))),
//                           //         Positioned(
//                           //             top: 9,
//                           //             left: 102,
//                           //             child: Text(
//                           //               'HOW IT WORKS ?',
//                           //               textAlign: TextAlign.left,
//                           //               style: GoogleFonts.ubuntu(
//                           //                   color: Color.fromRGBO(0, 0, 0, 1),
//                           //                   fontSize: 16,
//                           //                   letterSpacing: 0.30000001192092896,
//                           //                   fontWeight: FontWeight.bold,
//                           //                   height: 1.25),
//                           //             )),
//                           //         Positioned(
//                           //             top: 25,
//                           //             left: 102,
//                           //             child: Text(
//                           //               'See Marking Strategy',
//                           //               textAlign: TextAlign.left,
//                           //               style: TextStyle(
//                           //                   color: Color.fromRGBO(0, 0, 0, 1),
//                           //                   fontFamily: 'Ubuntu',
//                           //                   fontSize: 11,
//                           //                   letterSpacing: 0.30000001192092896,
//                           //                   fontWeight: FontWeight.bold,
//                           //                   height: 1.8181818181818181),
//                           //             )),
//                           //       ])),
//                             // onTap: (){
//                             //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => working()));
//                             // },
//
//
//                           // Figma Flutter Generator 4 - GROUP
//
//                             // Container(
//                             //     margin: EdgeInsets.only(top: 23, left: 35),
//                             //     width: 300,
//                             //     height: 50,
//                             //     child: Stack(children: <Widget>[
//                             //       Positioned(
//                             //           top: 0,
//                             //           left: 0,
//                             //           child: Container(
//                             //               width: 300,
//                             //               height: 50,
//                             //               decoration: BoxDecoration(
//                             //                 borderRadius: BorderRadius.only(
//                             //                   topLeft: Radius.circular(38),
//                             //                   topRight: Radius.circular(38),
//                             //                   bottomLeft: Radius.circular(38),
//                             //                   bottomRight: Radius.circular(38),
//                             //                 ),
//                             //                 color: Color.fromRGBO(
//                             //                     196, 196, 196, 1),
//                             //               ))),
//                             //       Positioned(
//                             //           top: 12.5,
//                             //           left: 40.12158203125,
//                             //           child: Container(
//                             //               width: 27.355623245239258,
//                             //               height: 25,
//                             //               decoration: BoxDecoration(
//                             //                 image: DecorationImage(
//                             //                     image: AssetImage(
//                             //                         'assets/images/Bookstack.png'),
//                             //                     fit: BoxFit.fitWidth),
//                             //               ))),
//                             //       Positioned(
//                             //           top: 14,
//                             //           left: 101,
//                             //           child: Text(
//                             //             'READ CONCEPT',
//                             //             textAlign: TextAlign.left,
//                             //             style: GoogleFonts.ubuntu(
//                             //                 fontSize: 19,
//                             //                 color: Color.fromRGBO(0, 0, 0, 1),
//                             //                 letterSpacing: 0.30000001192092896,
//                             //                 fontWeight: FontWeight.bold,
//                             //                 height: 1.0526315789473684),
//                             //           )),
//                             //     ])),
//                             // onTap: (){
//                             //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => concept()));
//                             // },
//
//
//                           // Figma Flutter Generator 5 - GROUP
//
//                             // Container(
//                             //     margin: EdgeInsets.only(top: 23, left: 35),
//                             //     width: 300,
//                             //     height: 50,
//                             //     child: Stack(children: <Widget>[
//                             //       Positioned(
//                             //           top: 0,
//                             //           left: 0,
//                             //           child: Container(
//                             //               width: 300,
//                             //               height: 50,
//                             //               decoration: BoxDecoration(
//                             //                 borderRadius: BorderRadius.only(
//                             //                   topLeft: Radius.circular(38),
//                             //                   topRight: Radius.circular(38),
//                             //                   bottomLeft: Radius.circular(38),
//                             //                   bottomRight: Radius.circular(38),
//                             //                 ),
//                             //                 color: Color.fromRGBO(
//                             //                     196, 196, 196, 1),
//                             //               ))),
//                             //       Positioned(
//                             //           top: 17,
//                             //           left: 101,
//                             //           child: Text(
//                             //             'ABOUT US',
//                             //             textAlign: TextAlign.left,
//                             //             style: TextStyle(
//                             //                 color: Color.fromRGBO(0, 0, 0, 1),
//                             //                 fontSize: 19,
//                             //                 letterSpacing: 0.30000001192092896,
//                             //                 fontWeight: FontWeight.bold,
//                             //                 height: 1.0526315789473684),
//                             //           )),
//                             //       Positioned(
//                             //           top: 10,
//                             //           left: 40,
//                             //           child: Container(
//                             //               width: 30,
//                             //               height: 30,
//                             //               decoration: BoxDecoration(
//                             //                 image: DecorationImage(
//                             //                     image: AssetImage(
//                             //                         'assets/images/Highimportance.png'),
//                             //                     fit: BoxFit.fitWidth),
//                             //               ))),
//                             //     ])),
//                             // onTap: (){
//                             //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => aboutus()));
//                             // },
//
//                           // Figma Flutter Generator 6 - GROUP
//                           //   Container(
//                           //       margin: EdgeInsets.only(top: 23, left: 35),
//                           //       width: 300,
//                           //       height: 50,
//                           //       child: Stack(children: <Widget>[
//                           //         Positioned(
//                           //             top: 0,
//                           //             left: 0,
//                           //             child: Container(
//                           //                 width: 300,
//                           //                 height: 50,
//                           //                 decoration: BoxDecoration(
//                           //                   borderRadius: BorderRadius.only(
//                           //                     topLeft: Radius.circular(38),
//                           //                     topRight: Radius.circular(38),
//                           //                     bottomLeft: Radius.circular(38),
//                           //                     bottomRight: Radius.circular(38),
//                           //                   ),
//                           //                   color: Color.fromRGBO(
//                           //                       196, 196, 196, 1),
//                           //                 ))),
//                           //         Positioned(
//                           //             top: 12,
//                           //             left: 41,
//                           //             child: Container(
//                           //                 width: 27.355623245239258,
//                           //                 height: 25,
//                           //                 decoration: BoxDecoration(
//                           //                   image: DecorationImage(
//                           //                       image: AssetImage(
//                           //                           'assets/images/Exit.png'),
//                           //                       fit: BoxFit.fitWidth),
//                           //                 ))),
//                           //         Positioned(
//                           //             top: 15,
//                           //             left: 101,
//                           //             child: Text(
//                           //               'EXIT',
//                           //               textAlign: TextAlign.left,
//                           //               style: GoogleFonts.ubuntu(
//                           //                   color: Color.fromRGBO(0, 0, 0, 1),
//                           //                   fontSize: 19,
//                           //                   letterSpacing: 0.30000001192092896,
//                           //                   fontWeight: FontWeight.bold,
//                           //                   height: 1.0526315789473684),
//                           //             )),
//                           //       ])),
//                     //
//                     //
//                     //     ],
//                     //   ),
//                     // ),
//                     Container(
//                       child: BouncingWidget(
//                         duration: Duration(milliseconds: 100),
//                         scaleFactor: 1.1,
//                         onPressed: () {
//                           Timer(Duration(milliseconds: 200), () {
//                             // 5 seconds over, navigate to Page2.
//                             Navigator.pop(context);
//                           });
//                         },
//                         child: Container(
//                           alignment: Alignment.topLeft,
//                           margin: EdgeInsets.only(top: 35, left: 30),
//                               child: Image.asset(
//                                 'assets/images/Multiply.png',
//                                 height: 30,
//                                 width: 30,
//                               ),
//                         ),
//
//                         ),
//                     ),
//                     // Container(
//                     //   alignment: Alignment.topLeft,
//                     //   margin: EdgeInsets.only(top: 35, left: 30),
//                     //   child: GestureDetector(
//                     //       child: Image.asset(
//                     //         'assets/images/Multiply.png',
//                     //         height: 30,
//                     //         width: 30,
//                     //       ),
//                     //       onTap: () {
//                     //         Navigator.of(context).push(MaterialPageRoute(
//                     //             builder: (context) => home()));
//                     //       }),
//                     // ),
//
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:io' as io;
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hpdeterminer/about_us.dart';
import 'package:hpdeterminer/dpupload.dart';
import 'package:hpdeterminer/login_auth/services/auth_service.dart';
import 'package:hpdeterminer/profile.dart';
import 'package:hpdeterminer/readpro.dart';
import 'package:hpdeterminer/register.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'main.dart';
import 'package:hpdeterminer/login.dart';
import 'login.dart';
String fileName = '';
var photoUrl;
// class getname extends StatelessWidget {
//   const getname({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: StreamBuilder(
//             stream: FirebaseFirestore.instance.collection('UserData').snapshots(),
//             builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//               if (!snapshot.hasData) {
//                 return Center(
//                   child: CircularProgressIndicator(),
//                 );
//               }
//
//               return ListView(
//                 children: snapshot.data!.docs.map((document) {
//                   return Container(
//                     child: Center(child: Text(document['username'])),
//                   );
//                 }).toList(),
//               );
//             }    )
//     );
//   }
// }

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  // disp()async{
  //   setState(()async {
  //     DocumentSnapshot data = await FirebaseFirestore.instance.collection('UserData').doc(the_email).get();
  //     nick = data['username'];
  //   });
  //   return nick;
  // }


// selector(){
//   if(photoUrl==null){
//     return 'https://icons.veryicon.com/png/o/miscellaneous/two-color-webpage-small-icon/user-244.png';
//   }
//   else {
//     return photoUrl;
//   }
// }
//
//
//   File? _imageFile=null;
//   final picker = ImagePicker();
//   Future pickImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);
//
//     setState(() {
//       _imageFile = File(pickedFile!.path);
//     });
//   }
//   Future uploadImageToFirebase(BuildContext context) async {
//
//     fileName = the_email;
//     firebase_storage.Reference ref =
//     firebase_storage.FirebaseStorage.instance
//         .ref().child('Profile Pictures').child('/$fileName');
//
//     final metadata = firebase_storage.SettableMetadata(
//         contentType: 'image/jpeg',
//         customMetadata: {'picked-file-path': fileName});
//     firebase_storage.UploadTask uploadTask;
//     //late StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);
//     uploadTask = ref.putFile(io.File(_imageFile!.path)!, metadata);
//
//     firebase_storage.UploadTask task= await Future.value(uploadTask);
//     Future.value(uploadTask).then((value) => {
//       print("Upload file path ${value.ref.fullPath}")
//     }).onError((error, stackTrace) => {
//       print("Upload file path error ${error.toString()} ")
//     });
//     task.whenComplete(()async{
//       photoUrl = await FirebaseStorage.instance.ref().child('Profile Pictures').child(fileName).getDownloadURL();
//
//     });
//     // photoUrl = await FirebaseStorage.instance.ref().child('Profile Pictures').child(fileName).getDownloadURL();
//     // return photoUrl;
//     // var dowurl = await (await uploadTask.whenComplete((){
//     //   FirebaseStorage.instance.ref().child('Profile Pictures/$fileName').getDownloadURL();
//     // }));
//     // var url = dowurl.toString();
//     // return url;
//
//   }
//
//
//
//   // String the_email = '';
// //   read()async{
// //     final prefs = await SharedPreferences.getInstance();
// //
// // // Try reading data from the counter key. If it doesn't exist, return 0.
// //     theemail = prefs.getString('save_email') ?? 0;
// //     return theemail;
// //   }
//
//   // void getname() {
//   //   FirebaseFirestore.instance.collection(namecontroller.text).get().then((querySnapshot) {
//   //     querySnapshot.docs.forEach((result) {
//   //      Map<String, dynamic> mmmm = result.data();
//   //     });
//   //   });
//   // }
//
//   // final data = FirebaseFirestore.instance.collection('UserData').doc(emailController.text).get();
//   // final data =   FirebaseFirestore.instance.collection(emailController.text).doc().get();
  _exit(context) {
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
          onPressed: () {
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


  _logout(context) {
    Alert(
      context: context,
      onWillPopActive: false,
      type: AlertType.warning,
      title: "Are you sure you want\nto Logout ?",
      buttons: [
        DialogButton(
          child: Text(
            "YES",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () async {
            final authService = Provider.of<AuthService>(context, listen: false);
            SharedPreferences preferences = await SharedPreferences.getInstance();
            await preferences.clear();
            await authService.signOut();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => login()));

            // Timer(Duration(milliseconds: 100), () {
            //   // 5 seconds over, navigate to Page2.
            //   SystemNavigator.pop();
            // });
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

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        child: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/cut.png',
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 40),
                        child: Text('MENU',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mulish(
                                fontSize: 19,
                                color: Colors.white,
                                letterSpacing: 2)),
                      ),
                      InkResponse(
                        // onTap: pickImage,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(30, 90, 30, 100), //pehle top 80 tha bhai
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                             selector()
                            ),
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),



                      // Container(
                      //   margin: EdgeInsets.only(top:190, left: 200),
                      //   child: IconButton(
                      //     onPressed: ()async{ uploadImageToFirebase(context);
                      //     // final prefs = await SharedPreferences.getInstance();
                      //     // prefs.setString('save_dp_url', photoUrl);
                      //       print(photoUrl);
                      //       },
                      //     icon: Icon(FontAwesomeIcons.edit,color: Colors.red,size: 14,),
                      //   ),
                      // ),



                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 245),
                        child: Text(nick,
                            style: GoogleFonts.mulish(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1)),
                      ),
                      Container(
                        child: BouncingWidget(
                          duration: Duration(milliseconds: 100),
                          scaleFactor: 1.1,
                          onPressed: () {
                            Timer(Duration(milliseconds: 200), () {
                              // 5 seconds over, navigate to Page2.
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(top: 35, left: 30),
                            child: Image.asset(
                              'assets/images/Multiply.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 315),  //pehle 285 tha bhai
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.2,
                        onPressed: () {
                          Timer(Duration(milliseconds: 200), () {
                            // 5 seconds over, navigate to Page2.
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => bighome()));
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 15),
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.height * 0.065,
                          // width: 300,
                          // height: 50,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    height: MediaQuery.of(context).size.height *
                                        0.065,
                                    // width: 300,
                                    // height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(38),
                                        topRight: Radius.circular(38),
                                        bottomLeft: Radius.circular(38),
                                        bottomRight: Radius.circular(38),
                                      ),
                                      color: Color.fromRGBO(196, 196, 196, 1),
                                    ))),
                            Positioned(
                                top: 12,
                                left: 44,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                    'assets/images/Homepage.png',
                                    fit: BoxFit.fitWidth,
                                  ),
                                )),
                            Positioned(
                                top: 17,
                                left: 106,
                                child: Text(
                                  'HOME',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.ubuntu(
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                      fontSize: 19,
                                      letterSpacing: 0.30000001192092896,
                                      fontWeight: FontWeight.bold,
                                      height: 1.0526315789473684),
                                )),
                          ]),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.2,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 17),
                            // width: 300,
                            // height: 50,
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      // width: 300,
                                      // height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.065,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(38),
                                          topRight: Radius.circular(38),
                                          bottomLeft: Radius.circular(38),
                                          bottomRight: Radius.circular(38),
                                        ),
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                      ))),
                              Positioned(
                                  top: 12,
                                  left: 43,
                                  child: Container(
                                      width: 27.355623245239258,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/User.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                              Positioned(
                                  top: 17,
                                  left: 101,
                                  child: Text(
                                    'PROFILE',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.ubuntu(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 19,
                                        letterSpacing: 0.30000001192092896,
                                        fontWeight: FontWeight.bold,
                                        height: 1.0526315789473684),
                                  )),
                            ])),
                      ),
                    ),
//                     Container(
//                       alignment: Alignment.center,
//                       child: BouncingWidget(
//                         duration: Duration(milliseconds: 100),
//                         scaleFactor: 1.2,
//                         onPressed: () async {
//                           // DocumentSnapshot data = await FirebaseFirestore.instance.collection('UserData').doc(the_email).get();
//                           // setState(() {
//                           //   nick = data['username'];
//                           // });
//                           // print(nick);
//                           //   final prefs = await SharedPreferences.getInstance();
//                           // DocumentSnapshot data = await FirebaseFirestore.instance.collection('UserData').doc('saurabhg.k.221@gmail.com').get();
//                           // print(data['username']);
//                           // setState(() {
//                           //   the_email = prefs.getString('save_email') ?? 'user-hai';
//                           // });
//
// // Try reading data from the counter key. If it doesn't exist, return 0.
// //     final save_email = prefs.getString('save_email') ?? 0;
//
//                           // print(save_email);
//                         },
//                         child: Container(
//                             margin: EdgeInsets.only(top: 17),
//                             // width: 300,
//                             // height: 50,
//                             width: MediaQuery.of(context).size.width * 0.75,
//                             height: MediaQuery.of(context).size.height * 0.065,
//                             child: Stack(children: <Widget>[
//                               Positioned(
//                                   top: 0,
//                                   left: 0,
//                                   child: Container(
//                                       // width: 300,
//                                       // height: 50,
//                                       width: MediaQuery.of(context).size.width *
//                                           0.75,
//                                       height:
//                                           MediaQuery.of(context).size.height *
//                                               0.065,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.only(
//                                           topLeft: Radius.circular(38),
//                                           topRight: Radius.circular(38),
//                                           bottomLeft: Radius.circular(38),
//                                           bottomRight: Radius.circular(38),
//                                         ),
//                                         color: Color.fromRGBO(196, 196, 196, 1),
//                                       ))),
//                               Positioned(
//                                   top: 12.5,
//                                   left: 40.12158203125,
//                                   child: Container(
//                                       width: 27.355623245239258,
//                                       height: 25,
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                             image: AssetImage(
//                                                 'assets/images/Statistics.png'),
//                                             fit: BoxFit.fitWidth),
//                                       ))),
//                               Positioned(
//                                   top: 9,
//                                   left: 102,
//                                   child: Text(
//                                     'HOW IT WORKS ?',
//                                     textAlign: TextAlign.left,
//                                     style: GoogleFonts.ubuntu(
//                                         color: Color.fromRGBO(0, 0, 0, 1),
//                                         fontSize: 16,
//                                         letterSpacing: 0.30000001192092896,
//                                         fontWeight: FontWeight.bold,
//                                         height: 1.25),
//                                   )),
//                               Positioned(
//                                   top: 25,
//                                   left: 102,
//                                   child: Text(
//                                     'See Marking Strategy',
//                                     textAlign: TextAlign.left,
//                                     style: TextStyle(
//                                         color: Color.fromRGBO(0, 0, 0, 1),
//                                         fontFamily: 'Ubuntu',
//                                         fontSize: 11,
//                                         letterSpacing: 0.30000001192092896,
//                                         fontWeight: FontWeight.bold,
//                                         height: 1.8181818181818181),
//                                   )),
//                             ])),
//                       ),
//                     ),
                    Container(
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.2,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> readpro()));
                          // FirebaseFirestore.instance.collection('UserData').doc(emailController.text).set(
                          //     {
                          //       'username':namecontroller.text
                          //     });
                          // print("onPressed");
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 17),
                            // width: 300,
                            // height: 50,
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      // width: 300,
                                      // height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.065,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(38),
                                          topRight: Radius.circular(38),
                                          bottomLeft: Radius.circular(38),
                                          bottomRight: Radius.circular(38),
                                        ),
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                      ))),
                              Positioned(
                                  top: 12.5,
                                  left: 40.12158203125,
                                  child: Container(
                                      width: 27.355623245239258,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Bookstack.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                              Positioned(
                                  top: 14,
                                  left: 101,
                                  child: Text(
                                    'READ CONCEPT',
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.ubuntu(
                                        fontSize: 19,
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        letterSpacing: 0.30000001192092896,
                                        fontWeight: FontWeight.bold,
                                        height: 1.0526315789473684),
                                  )),
                            ])),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        duration: Duration(milliseconds: 100),
                        scaleFactor: 1.2,
                        onPressed: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context)=> aboutus(),));
                        },
                        child: Container(
                            margin: EdgeInsets.only(top: 17),
                            // width: 300,
                            // height: 50,
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      // width: 300,
                                      // height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.75,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.065,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(38),
                                          topRight: Radius.circular(38),
                                          bottomLeft: Radius.circular(38),
                                          bottomRight: Radius.circular(38),
                                        ),
                                        color: Color.fromRGBO(196, 196, 196, 1),
                                      ))),
                              Positioned(
                                  top: 17,
                                  left: 101,
                                  child: Text(
                                    'ABOUT US',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 19,
                                        letterSpacing: 0.30000001192092896,
                                        fontWeight: FontWeight.bold,
                                        height: 1.0526315789473684),
                                  )),
                              Positioned(
                                  top: 10,
                                  left: 40,
                                  child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Highimportance.png'),
                                            fit: BoxFit.fitWidth),
                                      ))),
                            ])),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 15),
                        alignment: Alignment.center,
                        child: BouncingWidget(
                          duration: Duration(milliseconds: 100),
                          scaleFactor: 1.2,
                          onPressed: () {
                            Timer(Duration(milliseconds: 200), () {
                              // 5 seconds over, navigate to Page2.
                              _exit(context);
                            });
                          },
                          child: Container(
                              margin: EdgeInsets.only(top: 17),
                              // width: 300,
                              // height: 50,
                              width: MediaQuery.of(context).size.width * 0.75,
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        // width: 300,
                                        // height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.065,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(38),
                                            topRight: Radius.circular(38),
                                            bottomLeft: Radius.circular(38),
                                            bottomRight: Radius.circular(38),
                                          ),
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1),
                                        ))),
                                Positioned(
                                    top: 12,
                                    left: 41,
                                    child: Container(
                                        width: 27.355623245239258,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Exit.png'),
                                              fit: BoxFit.fitWidth),
                                        ))),
                                Positioned(
                                    top: 15,
                                    left: 101,
                                    child: Text(
                                      'EXIT',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.ubuntu(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 19,
                                          letterSpacing: 0.30000001192092896,
                                          fontWeight: FontWeight.bold,
                                          height: 1.0526315789473684),
                                    )),
                              ])),
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 15),
                        alignment: Alignment.center,
                        child: BouncingWidget(
                          duration: Duration(milliseconds: 100),
                          scaleFactor: 1.2,
                          onPressed: () async {

                            Timer(Duration(milliseconds: 200), () {
                              // 5 seconds over, navigate to Page2.
                              _logout(context);
                            });

                            // SharedPreferences preferences = await SharedPreferences.getInstance();
                            // await preferences.clear();
                            // await authService.signOut();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => login()));
                          },
                          child: Container(
                              margin: EdgeInsets.only(top: 1),
                              // width: 300,
                              // height: 50,
                              width: MediaQuery.of(context).size.width * 0.75,
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        // width: 300,
                                        // height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.75,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.065,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(38),
                                            topRight: Radius.circular(38),
                                            bottomLeft: Radius.circular(38),
                                            bottomRight: Radius.circular(38),
                                          ),
                                          color:
                                              Color.fromRGBO(196, 196, 196, 1),
                                        ))),
                                Positioned(
                                    top: 12,
                                    left: 41,
                                    child: Container(
                                        width: 27.355623245239258,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Exit.png'),
                                              fit: BoxFit.fitWidth),
                                        ))),
                                Positioned(
                                    top: 15,
                                    left: 101,
                                    child: Text(
                                      'LOGOUT',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.ubuntu(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontSize: 19,
                                          letterSpacing: 0.30000001192092896,
                                          fontWeight: FontWeight.bold,
                                          height: 1.0526315789473684),
                                    )),
                              ])),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
