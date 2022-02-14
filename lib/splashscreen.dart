import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding/onboardingmain.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {







  // Future checkFirstSeen() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool _seen = (prefs.getBool('seen') ?? false);
  //
  //   if (_seen) {
  //     Navigator.of(context).pushReplacement(
  //         new MaterialPageRoute(builder: (context) => new bighome()));
  //   } else {
  //     await prefs.setBool('seen', true);
  //     Navigator.of(context).pushReplacement(
  //         new MaterialPageRoute(builder: (context) => new splash()));
  //   }
  // }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 1500), () {
      // 5 seconds over, navigate to Page2.
      Navigator.push(context, MaterialPageRoute(builder: (_) => swipe()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // height: 100,
      // width: 100,
      child: Center(
        child: Image.asset('assets/images/logo.png',
        height: 185,
          width: 185,
        ),
      ),
    );
  }
}
