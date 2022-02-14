import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:hpdeterminer/home.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';

import 'bighome.dart';
int hpvalue = 0;
bool _validate = false;
bool c = false;
bool d = false;
var msg;
var rem;
var error;
class hpval extends StatefulWidget {
  const hpval({Key? key}) : super(key: key);

  @override
  _hpvalState createState() => _hpvalState();
}

class _hpvalState extends State<hpval> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          // Figma Flutter Generator Rectangle1Widget - RECTANGLE
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.62,
              decoration: BoxDecoration(
                borderRadius : BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(28),
                  bottomRight: Radius.circular(28),
                ),
                color : Color.fromRGBO(0, 0, 0, 1),
              )
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Container(
               margin: EdgeInsets.only(top: 40,left: 15),
               alignment: Alignment.topLeft,
                    child: IconButton(padding: EdgeInsets.all(8.0),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>bighome()));
                      },
                      icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,),
                    ),
                  ),

              Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 55.0,right: 95),
                child: Text('HP DETERMINER', textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 20,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1
                ),),
              ),
            ],
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 115, left: 25),
            child: Text('CHECK VALUE\nOF YOUR\nPOINTS', textAlign: TextAlign.left,
              style: GoogleFonts.josefinSans(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 38,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1
            ),),
          ),


          Container(
            alignment: Alignment.center,
              margin: EdgeInsets.only(top: 265, right: 30, left: 45),
              width: 262,
              height: 59,

              child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                        child: Container(
                          alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.72,
                            height: MediaQuery.of(context).size.height * 0.08,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.only(
                                topLeft: Radius.circular(46),
                                topRight: Radius.circular(46),
                                bottomLeft: Radius.circular(46),
                                bottomRight: Radius.circular(46),
                              ),
                              color: Colors.cyan,
                              // color : Color.fromRGBO(0, 255, 239, 0.5),
                            ),
                          child: Container(
                            margin: EdgeInsets.only(top: 5.0),
                            alignment: Alignment.center,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                              ],
                              controller: _controller,
                              maxLength: 3,
                              decoration: InputDecoration(
                                counterText: "",
                                contentPadding: EdgeInsets.all(10.0),
                                hintText: 'ENTER HP VALUE',
                               hintStyle: GoogleFonts.ubuntu(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1.2),
                                border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                              ),
                            ),
                          ),
                        )
                    ),
                  ]
              )
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            alignment: Alignment.center,
            child: BouncingWidget(
    duration: Duration(milliseconds: 100),
    scaleFactor: 1.2,
              onPressed: (){
                setState(() {
                  _controller.text.isEmpty? _validate=true:hpvalue = int.parse(_controller.text);

                  // hpvalue>0?options(hpvalue):myvalidator(hpvalue);
                  // _controller.text>100? _validate=true:hpvalue = int.parse(_controller.text);
                  // hpvalue = int.parse(_controller.text);
                  options(hpvalue);
                  myvalidator(hpvalue);
                  c = true;
                  hpvalue>100?c=false:null;
                  hpvalue==0?c=false:null;
                  _controller.text.isEmpty?c=false:null;
                });
              },
              child: Container(
    alignment: Alignment.bottomCenter,
    margin: EdgeInsets.only(top: 15),
    // width: 313,
    width: MediaQuery.of(context).size.width * 0.4,
    height: 57,
    decoration: BoxDecoration(
    borderRadius : BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
    ),
    color : Colors.redAccent.shade700,
    ),
    child: Row(
    children: [
    Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.only(top: 1, left: 20),
    child: Text('SUBMIT',
    textAlign: TextAlign.left,
    style: GoogleFonts.ubuntu(
    color: Color.fromRGBO(61, 63, 74, 1),
    decoration: TextDecoration.none,
    fontSize: 26,
    letterSpacing: 0, //percentages not used in flutter. defaulting to zero/,
    fontWeight: FontWeight.bold,
    height: 1
    ),
    ),
    ),
    ],
    ),
    ),
            )
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 110),
            child: TextButton(
              onPressed: (){
                setState(() {
                  d = false;
                  hpvalue = 0;
                  c = false;
                  _validate = false;
                  _controller.clear();
                });
              },
              child: Text('clear',
                style: GoogleFonts.faustina(fontStyle: FontStyle.italic,
                    fontSize: 16,color: Colors.blue,
                    decoration: TextDecoration.underline),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            child: mywidget(),
          ),
          Visibility(
            visible: d,
            child: Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 120),
              child: Text(
                '$error',
                style: GoogleFonts.londrinaSolid(
                  color: Colors.red,
                  fontSize: 38,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void myvalidator(int hpvalue) {
    if (_controller.text.isEmpty){
      error = 'HP Value is Empty';
      msg = '';
      setState(() {
        d = true;
        c = false;
      });
    }
    else if (hpvalue==0){
      error = 'You are joking, right!?';
      msg = '';
      setState(() {
        d = true;
        c = false;
      });
    }
    else if(hpvalue>100){
      error = 'HP Value is Invalid';
      msg = '';
      setState(() {
        d = true;
        c = false;
      });
    }
  }
}



options(hpvalue) {
      if (hpvalue>0 && hpvalue<20){
        rem = 'Not meant to scare you but,\nyou have completely lost\nthe quality of your life.\nStart practising a good diet\nand a better lifestyle\nbefore it\'s too late!';
        msg = 'Horrible!';
      }
      else if(hpvalue>=20 && hpvalue<=35){
        rem = 'You need to start prioritizing\nyour mental & physical health.\nGood things take time,exercising and enhancing survival\nskills could regenerate few HPs!';
        msg = 'Poor !';
      }
      else if(hpvalue>35 && hpvalue<50){
        rem = 'Being just on the right track\n isn\'t always enough to become strong, tough & immune Keep feeding your soul& body with knowledge, wisdom & immunity!';
        msg = 'Average !';
      }
      else if(hpvalue>50 && hpvalue<70){
        rem = 'This score means you\'re a tough survivor & fortunate to have all necessities of life.\nYou\'re strong just be grateful to God!';
        msg = 'Strong !';
      }
      else if(hpvalue>=70 && hpvalue<=80){
        rem = 'This score means you\'re\none hell of a survivor,you\'re strong and very close to being like invulnerable.';
        msg = 'Warrior !';
      }
      else if(hpvalue>80 && hpvalue<90){
        rem = 'This score means you\'re a bold survivor fortunate to have all necessities of life and a perfect health. Be grateful to God and\nkeep becoming ultimately strong!';
        msg = 'Dominant One!';
      }
      else if(hpvalue>=90 && hpvalue<=100){
        rem = 'This score shouts out loud that\nyou\'re a disciplined human\nwho takes care of health and that\'s what makes you a perfect ultimate survivor\nalmost like any fictional character\nlike Hashirama Senju or Iron Man!';
        msg = 'Perfect Susanoo!';
      }
    }



class mywidget extends StatefulWidget {
  const mywidget({Key? key}) : super(key: key);

  @override
  _mywidgetState createState() => _mywidgetState();
}

class _mywidgetState extends State<mywidget> {

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: c,
      child: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(right: 9.0, left: 9.0),
                child: Text(
                  '$msg',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    fontSize: 41,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, right: 9.0, left: 9.0, bottom: 15),
                child: Text(
                  '$rem',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                    fontSize: 21,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
            ),
        Container(
          height: 10,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: LiquidLinearProgressIndicator(
              borderRadius: 9.0,
              value: hpvalue/100, // Defaults to 0.5.
              valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent), // Defaults to the current Theme's accentColor.
              backgroundColor: Color.fromRGBO(183,110,121,1), // Defaults to the current Theme's backgroundColor.
              direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
              center: Text(""),
            )
          ),
        ),
          ],
        ),
      ),
    );
  }
}




