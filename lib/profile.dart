import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/Quiz%20Pages/resultsscreen.dart';
import 'package:hpdeterminer/about_us.dart';
import 'package:hpdeterminer/dpupload.dart';
import 'package:hpdeterminer/drawer.dart';
import 'package:hpdeterminer/login.dart';
import 'package:hpdeterminer/login_auth/services/auth_service.dart';
import 'package:hpdeterminer/main.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/images/union1.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back_ios,color: Colors.black),style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                      shadowColor: MaterialStateProperty.all<Color>(Colors.cyan),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.cyan),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              // side: BorderSide(color: Colors.red)
                          ),
                      ),
                  ),),
                ),
                // IconButton(
                //       padding: EdgeInsets.only(top: 25, left: 25),
                //         onPressed: (){}, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 65, left: 25),
                  child: Text(
                    'PROFILE',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.josefinSans(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 111), //pehle 110 tha bhai
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 75, //pehle 60 tha bhai
                    backgroundImage: NetworkImage(selector()),
                  )
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 262),
                  child: Text(
                    nick,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ubuntu(
                      letterSpacing: 1.1,
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Figma Flutter Generator Rectangle6Widget - RECTANGLE
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 305, left: 65),
                        width: MediaQuery.of(context).size.width * 0.62,
                        height: MediaQuery.of(context).size.height * 0.1,
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
                    Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 310, left: 85),
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
                          children: [
                            Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(top: 313, left: 40),
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
                              margin: EdgeInsets.only(top: 328, left: 55),
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
                      margin: EdgeInsets.only(top: 430), //pehle 415 tha bhai
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        child: Stack(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.725,
                                height: MediaQuery.of(context).size.height * 0.1,
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
                              padding: EdgeInsets.only(left: 25, top: 45),
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
                      margin: EdgeInsets.only(top: 21),
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        child: Stack(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.725,
                                height: MediaQuery.of(context).size.height * 0.1,
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
                              padding: EdgeInsets.only(left: 25, top: 45),
                              child: Text(
                                'Contact Details',
                                style: GoogleFonts.openSansCondensed(
                                  fontWeight: FontWeight.w100,
                                  fontSize: 15,
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
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutus()));
                        },
                      ),
                    ),


                    Container(
                      margin: EdgeInsets.only(top: 21),
                      alignment: Alignment.center,
                      child: BouncingWidget(
                        child: Stack(
                          children: [
                            Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.725,
                                height: MediaQuery.of(context).size.height * 0.1,
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
                        onPressed: (){
                          _logout(context);
                        },
                      ),
                    ),


                  ],
                )
              ],
            ),
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