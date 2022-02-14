import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/Quiz%20Pages/resultsscreen.dart';
import 'package:hpdeterminer/dpupload.dart';
import 'package:hpdeterminer/drawer.dart';
import 'package:hpdeterminer/home.dart';
import 'package:hpdeterminer/hpvalue.dart';
import 'package:hpdeterminer/login.dart';
import 'package:hpdeterminer/main.dart';
import 'package:hpdeterminer/new_profile.dart';
import 'package:hpdeterminer/profile.dart';
import 'package:hpdeterminer/read.dart';
import 'package:hpdeterminer/register.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';



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




class bighome extends StatefulWidget {
  const bighome({Key? key}) : super(key: key);

  @override
  _bighomeState createState() => _bighomeState();
}

class _bighomeState extends State<bighome> {

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  int _currentIndex = 1;
  final List _children = [
    read(),
    home(),
    new_profile(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.only(left: 15,top: 20),
                // margin: EdgeInsets.only(top: 20, left: 23),
                height: 25,
                width: 25,
                child: Material(
                  color: Colors.white,
                  child: InkResponse(highlightShape: BoxShape.circle,
                    highlightColor: Colors.white,
                    containedInkWell: true,
                    radius: 50,
                    splashColor: Colors.red.withOpacity(0.7),
                    child: Image.asset(
                      'assets/images/newmenu.png',
                      // color: Colors.black,
                    ),
                    onTap: ()async{
                    _key.currentState!.openDrawer();
// print(the_email);
                      final prefs = await SharedPreferences.getInstance();
                    // DocumentSnapshot sata = await FirebaseFirestore.instance.collection('UserData').doc(the_email).get();
                    // print(photoUrl);
                    // // print(sata['email']);
                    // nick = sata['username'];
                    // the_hp = sata['HP'];
                    setState(() {
                    the_email = prefs.getString('save_email') ?? 'user';
                    photoUrl= prefs.getString('save_dp_url');
                    // the_hp = prefs.getInt('save_result_hp')!;
                    });
                    print(the_email);

                      DocumentSnapshot sata = await FirebaseFirestore.instance.collection('UserData').doc(the_email).get();
                      // print(photoUrl);
                      // print(sata['email']);
                      nick = sata['username'];
                      the_hp = sata['HP'];
                      photoUrl = sata['dp_url'];
                      print(sata['dp_url']);

                    // FirebaseStorage.instance.ref().child('Profile Pictures').child(the_email);

                    DocumentSnapshot data = await FirebaseFirestore.instance.collection('UserData').doc(the_email).get();
                    setState(() {
                      nick = data[namecontroller.text];
                    });
                    // print(nick);
                    // print(data['username']);

                    }
                  ),
                )),
          title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20, left: 15), //left 15 tha bhai
                child: Text('HP DETERMINER',textAlign: TextAlign.center,style: GoogleFonts.ubuntu(
                  fontSize: 20,
                  color: Colors.black,
                  letterSpacing: 1.8,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(selector()),
                  radius: 20,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        key: _key,
        body: _children[_currentIndex],
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: <Widget>[
        //       DrawerHeader(
        //         child: Text('Drawer Header'),
        //         decoration: BoxDecoration(
        //           color: Colors.blue,
        //         ),
        //       ),
        //       ListTile(
        //         title: Text('Item 1'),
        //         onTap: () {
        //           // Update the state of the app.
        //           // ...
        //         },
        //       ),
        //       ListTile(
        //         title: Text('Item 2'),
        //         onTap: () {
        //           // Update the state of the app.
        //           // ...
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        bottomNavigationBar: CurvedNavigationBar(
                      // color: Colors.indigo.shade300,
                    color: Colors.pink.shade800,
                      backgroundColor: Colors.white,
                      height: 52,
                    onTap: onTabTapped, // new
                    index: _currentIndex, // new
                    items: [
                    Icon(Icons.info, size: 26, color: Colors.white,),
                        Icon(Icons.home_rounded, size: 26, color: Colors.white),
                        Icon(Icons.account_circle_rounded, size: 26, color: Colors.white),
                    ],
      ),);












    // return Scaffold(
    //       // backgroundColor: Colors.white,
    //       body: Center(child: Stack(
    //           alignment: Alignment.center,
    //           children: <Widget>[
    //             // Container(
    //             //   margin: EdgeInsets.only(top: 0.01),
    //             //   child: _children[_currentIndex],
    //             // ),
    //             // Container(
    //             //   alignment: Alignment.topCenter,
    //             //   child: Row(
    //             //     mainAxisAlignment: MainAxisAlignment.end,
    //             //     children: <Widget>[
    //             //
    //             //       // Container(
    //             //       //     margin: EdgeInsets.only(top: 18, left: 23),
    //             //       //     height: 25,
    //             //       //     width: 25,
    //             //       //     child: Material(
    //             //       //       color: Colors.white,
    //             //       //       child: InkResponse(
    //             //       //         containedInkWell: false,
    //             //       //         radius: 50,
    //             //       //         splashColor: Colors.blue,
    //             //       //         child: Image.asset(
    //             //       //           'assets/images/open.jpeg',
    //             //       //           // color: Colors.black,
    //             //       //         ),
    //             //       //         onTap: () => _key.currentState!.openDrawer(),
    //             //       //       ),
    //             //       //     )),
    //             //       Container(
    //             //         margin: EdgeInsets.only(top: 18, left: 49),
    //             //         child: Text(
    //             //           'HP DETERMINER',
    //             //           // textAlign: TextAlign.center,
    //             //           style: GoogleFonts.ubuntu(
    //             //             fontSize: 20,
    //             //             fontWeight: FontWeight.bold,
    //             //             color: Colors.black,
    //             //             letterSpacing: 1,
    //             //           ),
    //             //         ),
    //             //       ),
    //             //       Container(
    //             //         margin: EdgeInsets.fromLTRB(30, 16, 20, 0),
    //             //         child: CircleAvatar(
    //             //           radius: 20,
    //             //           backgroundImage: AssetImage('assets/images/man.png'),
    //             //           backgroundColor: Colors.transparent,
    //             //         ),
    //             //       )
    //             //     ],
    //             //   ),
    //             // ),
    //           ],
    //         ),),
    //       // new
    //       bottomNavigationBar: CurvedNavigationBar(
    //           // color: Colors.indigo.shade300,
    //         color: Colors.pink.shade800,
    //           backgroundColor: Colors.white,
    //           height: 52,
    //         onTap: onTabTapped, // new
    //         index: _currentIndex, // new
    //         items: [
    //         Icon(Icons.info, size: 26, color: Colors.white,),
    //             Icon(Icons.home_rounded, size: 26, color: Colors.white),
    //             Icon(Icons.exit_to_app_rounded, size: 26, color: Colors.white),
    //         ],
    //       ),
    //     );

  }
  }

