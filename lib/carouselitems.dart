import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class carousel extends StatelessWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.21,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      // items: [
      //   items(),
      // ]
      items: [
        Container(
            // width: 265,
            // height: 152.33766174316406,
            height: MediaQuery.of(context).size.height * 0.21,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.7,
                      // width: 265,
                      // height: 152.33766174316406,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(17),
                          topRight: Radius.circular(17),
                          bottomLeft: Radius.circular(17),
                          bottomRight: Radius.circular(17),
                        ),
                        color: Color.fromRGBO(57, 123, 223, 1),
                      ))),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 265,
                      height: 152.33766174316406,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                height: MediaQuery.of(context).size.height * 0.21,
                                width: MediaQuery.of(context).size.width * 0.7,
                                // width: 265,
                                // height: 152.33766174316406,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(17),
                                    topRight: Radius.circular(17),
                                    bottomLeft: Radius.circular(17),
                                    bottomRight: Radius.circular(17),
                                  ),
                                  color:
                                  Color.fromRGBO(57, 123, 223, 1),
                                ))),
                      ]))),
              Positioned(
                  top: 6.337646484375,
                  left: 98.187255859375,
                  child: Container(
                      width: 160.47808837890625,
                      height: 142.6883087158203,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage('assets/images/boy.png'),
                            fit: BoxFit.fitWidth),
                      ))),
              Positioned(
                  top: 17.66229248046875,
                  left: 16.892433166503906,
                  child: Text(
                    'Determine\nYour HP',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.ubuntu(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 21,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 86.1038818359375,
                  left: 16.892433166503906,
                  child: Text(
                    'Answer \nfew simple\nquestions',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.roboto(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 14,
                        letterSpacing: 0,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
            ])),

        //2nd Image of Slider
        // Figma Flutter Generator Group12Widget - GROUP
        Container(
            // width: 265,
            // height: 170,
            height: MediaQuery.of(context).size.height * 0.21,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      // width: 265,
                      // height: 170,
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                                // width: 265,
                                // height: 152.34,
                                height: MediaQuery.of(context).size.height * 0.21,
                                width: MediaQuery.of(context).size.width * 0.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(17),
                                    topRight: Radius.circular(17),
                                    bottomLeft: Radius.circular(17),
                                    bottomRight: Radius.circular(17),
                                  ),
                                  color:
                                  Color.fromRGBO(49, 183, 175, 1),
                                ))),
                        Positioned(
                            top: 26,
                            left: 154,
                            child: Container(
                                width: 97,
                                height: 112,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/Healthinsurance1.png'),
                                      fit: BoxFit.fitWidth),
                                ))),
                      ]))),
              Positioned(
                  top: 23.40582275390625,
                  left: 17.948211669921875,
                  child: Text(
                    'HP - Health\nPoints',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.ubuntu(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 88.6956787109375,
                  left: 17.948211669921875,
                  child: Text(
                    'HP means capability\nof your body to\nsurvive.',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.openSans(
                        color: Color.fromRGBO(100, 80, 80, 1),
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
            ])),
        Container(
            height: MediaQuery.of(context).size.height * 0.21,
            width: MediaQuery.of(context).size.width * 0.7,
            // width: 265,
            // height: 152.34,
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.21,
                      width: MediaQuery.of(context).size.width * 0.7,
                      // width: 265,
                      // height: 152.33999633789062,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(17),
                          topRight: Radius.circular(17),
                          bottomLeft: Radius.circular(17),
                          bottomRight: Radius.circular(17),
                        ),
                        color: Color.fromRGBO(191, 131, 227, 1),
                      ))),
              Positioned(
                  top: 26.883544921875,
                  left: 148,
                  child: Container(
                      width: 103,
                      height: 103,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Controller1.png'),
                            fit: BoxFit.fitWidth),
                      ))),
              Positioned(
                  top: 16.5587158203125,
                  left: 20.05975341796875,
                  child: Text(
                    'Like .  .  .  .  .',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.ubuntu(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 23,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
              Positioned(
                  top: 57,
                  left: 20.05975341796875,
                  child: Text(
                    'Game characters\nhave HP (health),\nyou can also\ndetermine your HP.',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.oxygen(
                        color: Color.fromRGBO(113, 85, 85, 1),
                        fontSize: 15,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  )),
            ])),
      ],
    );
  }
}
