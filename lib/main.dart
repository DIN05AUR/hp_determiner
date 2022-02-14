import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:hpdeterminer/login_auth/services/wrapper.dart';
import 'package:hpdeterminer/register.dart';

import 'package:hpdeterminer/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:hpdeterminer/login.dart';

import 'login_auth/services/auth_service.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await firebase_core.Firebase.initializeApp();
  await Firebase.initializeApp();
  runApp(MyApp());
}
bool? ifr;
var name ;
int hp = 025;
int result = 000;
int res = 000;
double resultinpoint = 0;
var _username;
String the_email = '';
int the_hp=0;
String nick = '';




// class MySharedPreferences {
//   MySharedPreferences._privateConstructor();
//
//   static final MySharedPreferences instance =
//   MySharedPreferences._privateConstructor();
//   setBooleanValue(String key, bool value) async {
//     SharedPreferences myPrefs = await SharedPreferences.getInstance();
//     myPrefs.setBool(key, value);
//   }
//
//   Future<bool> getBooleanValue(String key) async {
//     SharedPreferences myPrefs = await SharedPreferences.getInstance();
//     return myPrefs.getBool(key) ?? false;
//   }
// }



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {





  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_)=>AuthService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HP',
          home: Wrapper()
        // home: splash(),
        // home: splash(),


        // initialRoute: '/',
        // // routes: {
        // //   '/' : (context)=>Wrapper(),
        // //   '/login': (context)=> splash(),
        // //   '/register': (context)=> login(),
        // // },
        // routes: {
        //   '/' : (context)=>Wrapper(),
        //   '/login': (context)=> login(),
        //   '/register': (context)=> register(),
        // },

      ),
    );
  }
}
