import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class aboutus extends StatelessWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          child: Icon(FontAwesomeIcons.angleLeft,color: Colors.white,size: 30,),
          backgroundColor: Colors.red.shade700,
          onPressed: (){
            Navigator.pop(context);
      },
        ),
        body: Stack(
          children: <Widget>[
            Lottie.asset('assets/images/shapes.json',
                repeat: true,
                reverse: true,
                height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                //stack1
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      child: Image.asset('assets/images/Vector.png',
                        height: MediaQuery.of(context).size.height * 0.25,
                        // width: MediaQuery.of(context).size.width,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 30, left: 25),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'ABOUT US',
                        style: GoogleFonts.openSansCondensed(
                          fontSize: 40,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                    ),

                  ],
                ),

                //stack2
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 0),
                      alignment: Alignment.bottomRight,
                      child: Image.asset('assets/images/Vector1.png',
                        height: MediaQuery.of(context).size.height * 0.20,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 125),
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 132,
                backgroundImage: AssetImage('assets/images/saurabh.png'),
              )
            ),

                Container(
                  alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 415, left: 33),
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.839,
                    // width: 338,
                    // height: 188,
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(19),
                        topRight: Radius.circular(19),
                        bottomLeft: Radius.circular(19),
                        bottomRight: Radius.circular(19),
                      ),
                      color : Color.fromRGBO(207, 225, 242, 1),
                    ),
                  child: Stack(
                   children: <Widget>[

                    Container(
                      margin: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          //ROW 1
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.user),
                              Container(
                                margin: EdgeInsets.only(right: 90),
                                  child: Text(
                                      'SAURABH GUPTA',
                                    style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.blueGrey
                                    ),
                                  )
                              ),

                            ],
                          ),

                          //ROW 2
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.envelope),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                  child: Text(
                                      'saurabhg.k.221@gmail.com',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 14,
                                        color: Colors.blueGrey
                                    ),
                                  )
                              ),

                              IconButton(
                                padding: EdgeInsets.only(right: 10),
                                onPressed: (){

    Clipboard.setData(ClipboardData(text: 'saurabhg.k.221@gmail.com'))
        .then((value) { //only if ->
      Fluttertoast.showToast(
          msg: 'Copied to Clipboard',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue.shade900,
          textColor: Colors.white
      );
        }); // -> show a notification
                                },
                                icon: Icon(FontAwesomeIcons.copy,),
                              )
                            ],
                          ),

                          //ROW 3
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Icon(FontAwesomeIcons.instagram,size: 27),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 100),
                                  child: Text(
                                      '@saurabhg.k.221',
                                    style: GoogleFonts.ubuntu(
                                      fontSize: 16,
                                        color: Colors.blueGrey
                                    ),
                                  ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),

                    ],
                  ),
                ),

            // //final stack
            // Stack(
            //   children: <Widget>[
            //
            //     Container(
            //       margin: EdgeInsets.only(left: 40),
            //       color: Colors.pink,
            //           height: MediaQuery.of(context).size.height * 0.21,
            //           width: MediaQuery.of(context).size.width * 0.82,
            //     ),
            //     // Figma Flutter Generator Rectangle1Widget - RECTANGLE
            //     // Container(
            //     //   // alignment: Alignment.bottomCenter,
            //     //   //   margin: EdgeInsets.only(bottom: 50),
            //     //     height: MediaQuery.of(context).size.height * 0.21,
            //     //     width: MediaQuery.of(context).size.width * 0.82,
            //     //     // width: 338,
            //     //     // height: 188,
            //     //     decoration: BoxDecoration(
            //     //       borderRadius : BorderRadius.only(
            //     //         topLeft: Radius.circular(19),
            //     //         topRight: Radius.circular(19),
            //     //         bottomLeft: Radius.circular(19),
            //     //         bottomRight: Radius.circular(19),
            //     //       ),
            //     //       color : Color.fromRGBO(207, 225, 242, 1),
            //     //     )
            //     // ),
            //   ],
            // ),

          ],
        ),
      ),
    );
  }
}
