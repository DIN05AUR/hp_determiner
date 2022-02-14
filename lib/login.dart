import 'dart:math';

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/home.dart';
import 'package:hpdeterminer/login_auth/services/wrapper.dart';
import 'package:hpdeterminer/main.dart';
import 'package:hpdeterminer/register.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login_auth/services/auth_service.dart';

var _username;
var _email;
var _password;



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  // var _username;
  // var _email;
  // var _password;
  bool _obscureText = true;
  final namecontroller = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void showToast() {
    Fluttertoast.showToast(
        msg: 'The fields are Empty',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white
    );
  }
   showToastt(msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white
    );
  }
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: () async => false,
        child: Stack(
          children: [
          Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.93,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.blueAccent.shade700, Colors.blue.shade800],
                    [Colors.white, Colors.white],
                    [Colors.blueAccent.shade700, Colors.blue.shade800],
                    [Colors.blueAccent.shade700, Colors.blue.shade800],
                    // [Colors.blueAccent.shade400, Colors.pink],
                    // [Colors.blueAccent.shade200, Colors.white],
                    // [Colors.blue, Colors.lightBlueAccent]
                  ],
                  durations: [35000, 19440, 10800, 6000],
                  heightPercentages: [0.20, 0.23, 0.25, 0.30],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),

                waveAmplitude: 1,
                // heightPercentange: [0.25, 0.26, 0.28, 0.31],

                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.46,
          width: MediaQuery.of(context).size.width * 0.46,
          // height: 165,
          // width: 165,
          // margin: EdgeInsets.only(top: 75, left: 100),
          margin: EdgeInsets.only( left: 100),
          alignment: Alignment.center,
          child: Image.asset('assets/images/group.png'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 270, left: 45),
              child: Text(
                'LOGIN',
                style: GoogleFonts.quicksand(
                    fontSize: 42,
                    color: Colors.white
                ),
              ),
            ),
            // Container(
            //     margin: EdgeInsets.only(left: 50, top: 15),
            //     child: Container(
            //       width: MediaQuery
            //           .of(context)
            //           .size
            //           .width * 0.72,
            //       height: MediaQuery
            //           .of(context)
            //           .size
            //           .height * 0.07,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(32),
            //           topRight: Radius.circular(32),
            //           bottomLeft: Radius.circular(32),
            //           bottomRight: Radius.circular(32),
            //         ),
            //         color: Colors.white,
            //         // color : Color.fromRGBO(0, 255, 239, 0.5),
            //       ),
            //       child: Container(
            //         margin: EdgeInsets.only(top: 5.0),
            //         alignment: Alignment.center,
            //         child: TextFormField(cursorColor: Colors.red,
            //           controller: namecontroller,
            //           decoration: InputDecoration(
            //             prefixIcon: Icon(Icons.account_circle,size: 26,),
            //             counterText: "",
            //             contentPadding: EdgeInsets.all(10.0),
            //             hintText: 'USERNAME',
            //             hintStyle: GoogleFonts.ubuntu(fontSize: 19,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.blueGrey,
            //                 letterSpacing: 1.2),
            //             border: UnderlineInputBorder(
            //                 borderRadius: BorderRadius.circular(20.0)),
            //           ),
            //         ),
            //       ),
            //     )
            // ),
            Container(
                margin: EdgeInsets.only(left: 50, top: 15),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.72,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                    color: Colors.white,
                    // color : Color.fromRGBO(0, 255, 239, 0.5),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 5.0),
                    alignment: Alignment.center,
                    child: TextFormField(
                      cursorColor: Colors.red,
                      controller:emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.grey),
                        counterText: "",
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: 'EMAIL ID',
                        hintStyle: GoogleFonts.ubuntu(fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey,
                            letterSpacing: 1.2),
                        border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(left: 50, top: 15),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.72,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                    color: Colors.white,
                    // color : Color.fromRGBO(0, 255, 239, 0.5),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 5.0),
                        alignment: Alignment.center,
                        child: TextFormField(
                          cursorColor: Colors.red,
                          obscureText: _obscureText,
                          controller: passwordController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key_sharp),
                            counterText: "",
                            contentPadding: EdgeInsets.all(10.0),
                            hintText: 'PASSWORD',
                            hintStyle: GoogleFonts.ubuntu(fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Colors.blueGrey,
                                letterSpacing: 1.2),
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15, bottom: 2),
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: _toggle,
                          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off,),
                        ),
                      ),
                    ],
                  ),
                )
            ),

            Container(
              margin: EdgeInsets.only(left: 50, top: 30),
              child: BouncingWidget(
                onPressed: ()async{

                  final prefs = await SharedPreferences.getInstance();

// set value
                  prefs.setString('save_email', emailController.text);


                  try{
                    authService.signInWithEmailAndPassword(emailController.text, passwordController.text);
                  }
                  on FirebaseAuthException
                  catch(e){
                    return showToastt(e);
                  }
                    // authService.signInWithEmailAndPassword(emailController.text, passwordController.text);
                    // emailController.text.isEmpty && passwordController.text.isEmpty?? showToast();
                    if(emailController.text.isEmpty && passwordController.text.isEmpty){
                     showToast();
                              }
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrapper()));
                  // MySharedPreferences.instance
                  //     .setBooleanValue("loggedin", true);
                  setState(() {
                    _username = namecontroller.text;
                    _username==null? _username='USER':name = _username;
                  });

                },
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.72,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.072,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                    color: Colors.cyan,
                    // color : Color.fromRGBO(0, 255, 239, 0.5),
                  ),
                  child: Center(
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.ubuntu(
                        letterSpacing: 1,
                        fontSize: 29,
                        color: Colors.white
                      ),
                    ),
                  ),
              ),
            ),),
            Container(
              margin: EdgeInsets.only(top: 10.0,left: 40),
              child: TextButton(
                child: Text('I don\'t have an account !',
                textAlign: TextAlign.center,
                style: GoogleFonts.karla(
                  fontSize: 16,
                  color: Colors.white,
                  letterSpacing: 0.7,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.pink.shade100
                ),
                ),
                onPressed: (){
                  // Navigator.pushNamed(context, '/register');
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));
                },
              ),
            ),
              ],
            ),

          ],
        ),
      ),
    );
  }


}

// void holdvalue(a){
//   var username;
//   var emailid;
//   username = _username;
//   emailid = _email;
//   if(a==0){
//     return username;
//   }
//   else{
//     return emailid;
//   }
// }
