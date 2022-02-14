import 'dart:async';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/about_us.dart';
import 'package:hpdeterminer/dpupload.dart';
import 'package:hpdeterminer/login.dart';
import 'package:hpdeterminer/login_auth/services/auth_service.dart';
import 'package:hpdeterminer/main.dart';
import 'package:provider/provider.dart';
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



class new_profile extends StatelessWidget {
  const new_profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: ()async=>_exit(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'PROFILE',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 60,
                  backgroundImage: NetworkImage(selector()),
                )
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 15),
              child: Text(
                nick,
                textAlign: TextAlign.center,
                style: GoogleFonts.ubuntu(
                  letterSpacing: 1.1,
                  fontSize: 27,
                  color: Colors.black,
                ),
              ),
            ),
            Stack(alignment: Alignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width * 0.62,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18),
                      ),
                      color : Color.fromRGBO(78, 223, 242, 100)
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        'HP',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.ubuntu(
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // Figma Flutter Generator Rectangle7Widget - RECTANGLE
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 20,top: 17),
                            width: MediaQuery.of(context).size.width * 0.23,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(9),
                                topRight: Radius.circular(9),
                                bottomLeft: Radius.circular(9),
                                bottomRight: Radius.circular(9),
                              ),
                              color : Color.fromRGBO(162, 31, 31, 1),
                            )
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 20, left: 15),
                          child: Text(
                            // '100',
                            '$the_hp',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.orbitron(
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.bold,
                              fontSize: 37,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  child: BouncingWidget(
                    child: Stack(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.725,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                                bottomRight: Radius.circular(18),
                              ),
                              color : Color.fromRGBO(196, 196, 196, 1),
                            )
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, top: 15),
                          child: Text(
                            'EDIT',
                            style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              letterSpacing: 1.2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, top: 40),
                          child: Text(
                            'Change Profile Picture',
                            style: GoogleFonts.openSansCondensed(
                              fontWeight: FontWeight.w100,
                              fontSize: 17,
                              letterSpacing: 1.2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 185, top: 12),
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/edit.png'),
                        ),
                      ],
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>upload()));
                    },
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(top: 12),
                  alignment: Alignment.center,
                  child: BouncingWidget(
                    child: Stack(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.725,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                                bottomRight: Radius.circular(18),
                              ),
                              color : Color.fromRGBO(196, 196, 196, 1),
                            )
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, top: 15),
                          child: Text(
                            'CONTACT US',
                            style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                              letterSpacing: 1.2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, top: 40),
                          child: Text(
                            'Contact Details',
                            style: GoogleFonts.openSansCondensed(
                              fontWeight: FontWeight.w100,
                              fontSize: 17,
                              letterSpacing: 1.2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 185, top: 12),
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/help.png'),
                        ),
                      ],
                    ),
                    onPressed: ()async{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutus()));
                    },
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(top: 12),
                  alignment: Alignment.center,
                  child: BouncingWidget(
                    child: Stack(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.725,
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
                                bottomRight: Radius.circular(18),
                              ),
                              color : Color.fromRGBO(196, 196, 196, 1),
                            )
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25, top: 20),
                          child: Text(
                            'LOGOUT',
                            style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              letterSpacing: 1.2,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(left: 185, top: 12),
                          height: 50,
                          width: 50,
                          child: Image.asset('assets/images/logout.png'),
                        ),
                      ],
                    ),
                    onPressed: ()async{
                      _logout(context);
                      // await authService.signOut();
                    },
                  ),
                ),


              ],
            )
          ],
        ),
      ),
    );
  }
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