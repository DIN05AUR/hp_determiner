import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/drawer.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


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



class read extends StatefulWidget {
  const read({Key? key}) : super(key: key);

  @override
  _readState createState() => _readState();
}

class _readState extends State<read> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: ()async=>_exit(context),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CONCEPT\nBEHIND',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.quicksand(
                      fontSize: 38,
                      color: Colors.black,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 20, left: 15),
                  height: 100,
                  width: 115,
                  color: Color.fromRGBO(255, 235, 0, 1),
                  child: Container(
                    margin: EdgeInsets.only(top: 13),
                    child: Text(
                      'HP',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.yanoneKaffeesatz(
                        fontSize: 90,
                        color: Colors.black,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height * 0.632,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17),
                      topRight: Radius.circular(17),
                      bottomLeft: Radius.circular(17),
                      bottomRight: Radius.circular(17),
                    ),
                    color: Color.fromRGBO(165, 156, 156, 1),
                  ),
                  child: ListView(
                    children: <Widget>[
                      Center(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '''In video games, player characters are allocated with certain amount of health points which they have to protect them or else the character dies once the health points gets depleted or becomes zero. Therefore, in games, players know the limit that when they’re going to die on the contrary of health points (HP). With the number of health points players have, they are able to defend themselves from attacks accordingly. So, players will do everything to protect their health points in order to protect themselves from dying.\n
But this concept of health points (HP’s) is only limited to the fictional reality of video games and doesn’t apply to real world. Therefore, as a human how great it would be if we also knew that how much HP we have been left with so that we can protect ourselves accordingly. The video game characters have this advantage, but we don’t and therefore, there comes the purpose of this project.\n
Hence, this project aims to calculate real people’s Health Points with the help of few simple yes & no questions as an input parameter which users will have to answer in order to determine their HP. Once, users get to know their HP they will know by how much they have developed and evolved themselves since their birth. By determining HP, users can also have a rough idea about their lifetime like how longer they will live. Because the concept of HP is directly proportional to life expectancy which means the greater the HP, the stronger and invulnerable they are and hence the longer they’ll live. But all these scenarios can’t be helped if GOD intervened us in between because life is uncertain, and anything can happen to anyone anywhere it’s totally up to GOD. But still, this project will try to determine HP and maybe life expectancy if the GOD ACT factor is kept aside.
''',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.kanit(
                                fontSize: 18.5,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 220, top: 335),
                  height: 100,
                  width: 100,
                  // margin: EdgeInsets.only(right: 15),
                  alignment: Alignment.bottomRight,
                  child: Lottie.asset('assets/images/scroll.json'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
