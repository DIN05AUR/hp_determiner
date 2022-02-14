import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/home.dart';
import 'package:hpdeterminer/login_auth/models/user_model.dart';
import 'package:hpdeterminer/login_auth/services/auth_service.dart';
import 'package:hpdeterminer/login_auth/services/wrapper.dart';
import 'package:hpdeterminer/main.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';


final namecontroller = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController ageController = TextEditingController();
var _username;
var _email;
var _password;
var _age;
int age = 0;

void showToastt(msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white
  );
}

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  // var _username;
  // var _email;
  // var _password;
  bool _obscureText = true;

  // final namecontroller = TextEditingController();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {
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
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(2, 29, 128, 1),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.withOpacity(0.9),
        child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Icon(Icons.arrow_back_ios)),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      body: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [


              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.4, //pehle 0.93 tha bhai
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      [Colors.white, Colors.white],
                      [Colors.white, Colors.white],
                      [Colors.white, Colors.white],
                      [Colors.white, Colors.white],
                      // [Colors.blueAccent.shade400, Colors.pink],
                      // [Colors.blueAccent.shade200, Colors.white],
                      // [Colors.blue, Colors.lightBlueAccent]
                    ],
                    durations: [35000, 19440, 10800, 6000],
                    // heightPercentages: [0.3,0.1,0.1,0.1],
                    heightPercentages: [0.20, 0.23, 0.25, 0.30],
                    // blur: MaskFilter.blur(BlurStyle.solid, 10),
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight,
                  ),

                  waveAmplitude: 3,
                  // heightPercentange: [0.25, 0.26, 0.28, 0.31],

                  size: Size(

                    double.infinity,
                    double.infinity

                  ),
                ),
              ),





              // Container(
              //   alignment: Alignment.bottomCenter,
              //   height: MediaQuery
              //       .of(context)
              //       .size
              //       .height , //pehle 0.93 tha bhai
              //   width: MediaQuery
              //       .of(context)
              //       .size
              //       .width,
              //   child: WaveWidget(
              //     config: CustomConfig(
              //       gradients: [
              //         [Colors.blueAccent.shade700, Colors.blue.shade800],
              //         [Colors.pinkAccent.shade200, Colors.lightBlueAccent],
              //         [Colors.blueAccent.shade700, Colors.blue.shade800],
              //         [Colors.blueAccent.shade700, Colors.blue.shade800],
              //         // [Colors.blueAccent.shade400, Colors.pink],
              //         // [Colors.blueAccent.shade200, Colors.white],
              //         // [Colors.blue, Colors.lightBlueAccent]
              //       ],
              //       durations: [35000, 19440, 10800, 6000],
              //       heightPercentages: [0.20, 0.23, 0.25, 0.30],
              //       blur: MaskFilter.blur(BlurStyle.solid, 10),
              //       gradientBegin: Alignment.bottomLeft,
              //       gradientEnd: Alignment.topRight,
              //     ),
              //
              //     waveAmplitude: 3,
              //     // heightPercentange: [0.25, 0.26, 0.28, 0.31],
              //
              //     size: Size(
              //
              //       double.infinity,
              //       double.infinity
              //
              //     ),
              //   ),
              // ),
            ],
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.46,
          //   width: MediaQuery.of(context).size.width * 0.46,
          //   // height: 165,
          //   // width: 165,
          //   // margin: EdgeInsets.only(top: 75, left: 100),
          //   margin: EdgeInsets.only( left: 100),
          //   alignment: Alignment.center,
          //   child: Image.asset('assets/images/group.png'),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 80, left: 45),
                child: Text(
                  'REGISTER',
                  style: GoogleFonts.josefinSans(
                      fontSize: 56,
                      letterSpacing: 1,
                      color: Colors.white
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 50, top: 55),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.72, //pehle 0.72 tha bhai
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
                        controller: namecontroller,
                        decoration: InputDecoration(
                          // suffixIcon: Icon(Icons.announcement_outlined,color: Colors.red,),
                          prefixIcon: Icon(Icons.account_circle,size: 26,),
                          counterText: "",
                          contentPadding: EdgeInsets.all(10.0),
                          hintText: 'USERNAME',
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
                  margin: EdgeInsets.only(left: 50, top: 20),
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
                  margin: EdgeInsets.only(left: 50, top: 20),
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
                  margin: EdgeInsets.only(left: 50, top: 20),
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
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                            keyboardType: TextInputType.number,
                            validator: agevalidate(),
                            cursorColor: Colors.red,
                            controller:ageController,
                            maxLength: 2,
                            decoration: InputDecoration(
                              prefixIcon: Icon(FontAwesomeIcons.child, color: Colors.grey),
                              counterText: "",
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: 'ENTER AGE',
                              hintStyle: GoogleFonts.ubuntu(fontSize: 19,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                  letterSpacing: 1.2),
                              border: UnderlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                          ),
                        ),



                          // Container(
                          //   padding: EdgeInsets.only(right: 15, bottom: 2),
                          //   alignment: Alignment.centerRight,
                          //   child: AbsorbPointer(
                          //     absorbing: _hidecheck,
                          //     child: Icon(
                          //       FontAwesomeIcons.checkCircle
                          //     ),
                          //   )
                          // ),

                      ],
                    ),
                  )
              ),



              AbsorbPointer(
                absorbing: _age,
                child: Container(
                  margin: EdgeInsets.only(left: 50, top: 140),
                  child: BouncingWidget(
                    onPressed: ()async{
                      // obtain shared preferences
                      final prefs = await SharedPreferences.getInstance();

// set value
                      prefs.setString('save_email', emailController.text);

                      await authService.createUserWithEmailAndPassword(emailController.text, passwordController.text);
                      //     .then((value) => {
                      //   FirebaseFirestore.instance.collection('UserData').doc(emailController.text).set(
                      //     {'email': emailController.text,
                      //       'username': namecontroller.text,
                      //       'uid': value!.uid
                      //
                      //     },
                      //   )
                      // });
                      if(emailController.text.isEmpty && passwordController.text.isEmpty && ageController.text.isEmpty){
                        showToast();

                      }
                      setState(() {
                        _username = namecontroller.text;
                        _username==null? _username='USER':name = _username;
                      }
                      );

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Wrapper()));
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => bighome()),
                      // );
                    },
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.71,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height * 0.075,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14),
                        ),
                        color: Colors.black,
                        // color : Color.fromRGBO(0, 255, 239, 0.5),
                      ),
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: GoogleFonts.ubuntu(
                              letterSpacing: 1,
                              fontSize: 29,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),),
              )
            ],
          ),
        ],
      ),
    );
  }

  agevalidate(){

    //condition 1
    if(ageController.text.isEmpty || namecontroller.text.isEmpty){
      setState(() {
        _age = true;
      });
    }
    else{
      setState(() {
        _age = false;

      });
    }

    // setState(() {
    //   age = ageController.text as int;
    // });

    //condition 2
    // if(ageController.text.isEmpty == false){
    //   setState(() {
    //     // _hidecheck = false;
    //   });
    // }



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
