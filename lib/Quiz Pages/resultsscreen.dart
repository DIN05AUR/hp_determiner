import 'dart:io';
import 'dart:ui';
import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hpdeterminer/bighome.dart';
import 'package:hpdeterminer/home.dart';
import 'package:hpdeterminer/hpvalue.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hpdeterminer/main.dart';
// final double hp = 0.5;
// int result = 74;


class results extends StatefulWidget {
   results({Key? key}) : super(key: key);
  @override
  _resultsState createState() => _resultsState();
}

class _resultsState extends State<results> {
  final _screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Screenshot(
        controller: _screenshotController,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white, Colors.lightBlue.shade400,
              ],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: <Widget>[
                Container(
                  child: Lottie.asset('assets/images/congratulation.json',
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,

                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 135),
                    // width: MediaQuery.of(context).size.width * 0.9,
                    // height: MediaQuery.of(context).size.height * 0.43,
                    width: 320,
                    height: 320,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: const Offset(
                            0.0,
                            4.0,
                          ),
                          blurRadius: 4.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      color: Color.fromRGBO(229, 220, 233, 1),
                      borderRadius: BorderRadius.all(Radius.elliptical(320, 320)),
                      // borderRadius: BorderRadius.all(Radius.elliptical(320, 320)),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: LiquidCustomProgressIndicator(
                            value: resultinpoint,
                            // Defaults to 0.5.
                            valueColor: AlwaysStoppedAnimation(Colors.red),
                            // Defaults to the current Theme's accentColor.
                            backgroundColor: Colors.white,
                            // Defaults to the current Theme's backgroundColor.
                            direction: Axis.vertical,
                            // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right).
                            shapePath:
                            _buildHeartPath(), // A Path object used to draw the shape of the progress indicator. The size of the progress indicator is created from the bounds of this path.
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 50),
                          child: Text(
                            '$result/100',
                            style: GoogleFonts.rubik(
                              fontSize: 36,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'YOU SCORED',
                        style: GoogleFonts.kanit(
                          color: Colors.black,
                          fontSize: 29,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 135),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '$result HP !!',
                        style: GoogleFonts.kanit(
                          color: Colors.black,
                          fontSize: 52,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 135),
                    child: CircularPercentIndicator(
                      radius: 321.0,
                      lineWidth: 8.0,
                      animation: true,
                      percent: resultinpoint,
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  alignment: Alignment.topCenter,
                  child: Text(
                    'RESULTS',
                    style: GoogleFonts.ranchers(
                      letterSpacing: 8,
                      color: Colors.black,
                      fontSize: 35,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  alignment: Alignment.bottomCenter,
                  child: BouncingWidget(
                    scaleFactor: 0.9,
                    duration: Duration(milliseconds: 300),
                    onPressed: (){
                      res = 0;
                      hp = 25;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => bighome()),
                      );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.08,

                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: MediaQuery.of(context).size.width * 0.75,
                                      height: MediaQuery.of(context).size.height * 0.08,
                                      decoration: BoxDecoration(
                                        borderRadius : BorderRadius.only(
                                          topLeft: Radius.circular(17),
                                          topRight: Radius.circular(17),
                                          bottomLeft: Radius.circular(17),
                                          bottomRight: Radius.circular(17),
                                        ),
                                        color : Color.fromRGBO(0, 151, 236, 1),
                                      )
                                  )
                              ),Positioned(
                                  top: 16,
                                  left: 40,
                                  child: Text('GO TO HOME',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.kanit(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 32,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),)
                              ),
                            ]
                        )
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  alignment: Alignment.bottomCenter,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>hpval()));
                  },
                    child: Text(
                      'Click here to check HP value !',
                      style: GoogleFonts.kanit(
                          color: Colors.black,
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 105, right: 30),
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: (){
                      _takeScreenshot();
                     //  final imageFile = await _screenshotController.capture();
                     // Share.shareFiles([imageFile.path]);
                    },
                    icon: Icon(Icons.share_rounded),
                  ),
                ),
                // Container(
                //   child: Lottie.asset('assets/images/congratulation.json',
                //   height: MediaQuery.of(context).size.height,
                //     width: MediaQuery.of(context).size.width,
                //
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );

    // return Container(
    //   color: Colors.purple.shade100,
    //   height: MediaQuery.of(context).size.height,
    //   width: MediaQuery.of(context).size.width,
    //     child: Center(child: Lottie.asset('assets/images/anime.json', repeat: false))
    // );
  }

  Path _buildHeartPath() {
    return Path()
      ..moveTo(55, 15)
      ..cubicTo(55, 12, 50, 0, 30, 0)
      ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
      ..cubicTo(0, 55, 20, 77, 55, 95)
      ..cubicTo(90, 77, 110, 55, 110, 37.5)
      ..cubicTo(110, 37.5, 110, 0, 80, 0)
      ..cubicTo(65, 0, 55, 12, 55, 15)
      ..close();
  }

  void _takeScreenshot() async {
    final uint8List = await _screenshotController.capture();
    String tempPath = (await getTemporaryDirectory()).path;
    File file = File('$tempPath/image.png');
    await file.writeAsBytes(uint8List!);
    await Share.shareFiles([file.path]);
  }


}
