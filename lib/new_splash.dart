import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboarding/onboardingmain.dart';

class splashh extends StatefulWidget {
  const splashh({Key? key}) : super(key: key);

  @override
  _splashhState createState() => _splashhState();
}

class _splashhState extends State<splashh> {







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
      Navigator.push(context, MaterialPageRoute(builder: (_) => bighome()));
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
