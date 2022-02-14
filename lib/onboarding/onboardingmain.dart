import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hpdeterminer/onboarding/swipe1.dart';
import 'package:hpdeterminer/onboarding/swipe2.dart';
import 'package:hpdeterminer/onboarding/swipe3.dart';
import 'package:hpdeterminer/onboarding/swipe4.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
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


class swipe extends StatefulWidget {
  const swipe({Key? key}) : super(key: key);

  @override
  _swipeState createState() => _swipeState();
}

class _swipeState extends State<swipe> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async => false,
      child: LiquidSwipe(
        enableLoop: false,
          pages: [
            swipe1(),
            swipe2(),
            swipe3(),
          ],
        slideIconWidget: Icon(Icons.arrow_back_ios_rounded),
        fullTransitionValue: 650,
        waveType: WaveType.liquidReveal,
        ),
    );

  }
}
