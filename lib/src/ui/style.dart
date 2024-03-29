// FONTS
import 'package:seven_die_web/src/data/global_data.dart';
import 'package:flutter/material.dart';

const String MAIN_FONT = 'Roboto';
// CONSTs
// COLORS
const Color colorGreen = Colors.green;
const Color colorRed = Colors.red;
const Color colorBlue = Colors.blue;
const Color colorLightGray = Colors.grey;
const Color colorLightestGray = Colors.white60;
const Color colorGray = Colors.white12;
const Color colorWhiteOff = const Color(0xFFECEFF1);
const Color colorWhite = Colors.white;
const Color colorBlack = Colors.black;
//

const double CONTENT_HEIGHT_PERCENTAGE = 0.8;
const double INDICATOR_SIZE_PERCENTAGE = 0.85;
const double INDICATOR_STROKE_SIZE = 10.0; // maybe increate by size
const double LARGE_ICON_FACTOR = 2.0;
//final Color ColorGREEN = const Color(0x00CC00);
//
// Icon and Icon Button Settings
const Color iconColor = colorRed;
const Color selectedColor = colorLightGray;
double iconSize = 50.0;

double imageWidthDisplayPercentage = 0.4;
double imageHeightDisplayPercentage = 0.5;
// TEXT SIZES

double dieTextSize = 150.0;
double dieMiniTextSize = 35.0;
double titleTextSize =25.0 ;
double labelTextSize = 22.0;
double bodyTextSize = 20.0;

// SPACINGS
double corePadding = 15.0;
double coreButtonSpacing = 15.0;
double tinySpacing = 5.0;

double mainButtonHeight = 300.0;
double medButtonWidth = 250.0;
double smallButtonWidth = 200.0;
double borderRadius = 25.0;
//
//
//// TEXT STYLES
//TextStyle dieTextStyle() {
//    return TextStyle (
//        color: colorBlack, fontSize:dieTextSize, fontWeight: FontWeight.bold, fontFamily: MAIN_FONT
//        );
//}
//
//TextStyle dieMiniTextStyle() {
//    return TextStyle (
//        color: colorBlack, fontSize:dieMiniTextSize, fontWeight: FontWeight.bold, fontFamily: MAIN_FONT
//        );
//}
//
//
//TextStyle titleTextStyle() {
//    return TextStyle (
//        color: colorWhite, fontSize:titleTextSize, fontFamily: MAIN_FONT
//        );
//}
//
//TextStyle bodyTextStyle() {
//    return TextStyle(
//        color: colorGreen, fontSize: bodyTextSize, fontFamily: MAIN_FONT);
//}// TEXT STYLES
//TextStyle bodyTextDisabledStyle() {
//    return TextStyle(
//        color: colorLightGray, fontSize: bodyTextSize, fontFamily: MAIN_FONT);
//}
//
//
//TextStyle bodyBoldTextStyle() {
//    return TextStyle(
//        color: colorGreen, fontSize: bodyTextSize, fontFamily: MAIN_FONT);
//}
//
//TextStyle buttonDisabledTextStyle() {
//    return TextStyle(
//        color: colorGray, fontSize: bodyTextSize, fontFamily: MAIN_FONT);
//}
//
//
//TextStyle buttonTextStyle() {
//    return TextStyle(
//        color: colorWhite, fontWeight:FontWeight.bold, fontSize: bodyTextSize, fontFamily: MAIN_FONT);
//}
//
//
//// THEMES
//AppBarTheme appBarTheme() {
//    return AppBarTheme(
//        textTheme: TextTheme(
//            title: titleTextStyle(),
//            ),
//        );
//}
//
//TextTheme genTextTheme() {
//    return TextTheme(
//        title: titleTextStyle(),
//        body1: bodyTextStyle(),
//        );
//}
//
//ThemeData appTheme() {
//    return ThemeData(
//        primaryColor: colorGreen,
//        canvasColor: colorWhite,
//        appBarTheme: appBarTheme(),
//        backgroundColor: colorWhite,
//        scaffoldBackgroundColor: colorWhite,
//        textTheme: genTextTheme(),
//        unselectedWidgetColor:colorLightestGray,
//        dialogBackgroundColor: colorWhite,
//        fontFamily: MAIN_FONT);
//}
//
//// ELEMENTS
//// Reusable Widgets Buttons / Form elements etc...
//Image getPentagram(int num) {
//    switch (num) {
//        case 1:
//            return Image.asset (
//                'assets/images/pentagram_blue.png'
//                );
//
//        case 2:
//            return Image.asset (
//                'assets/images/pentagram_green.png'
//                );
//        case 3:
//            return Image.asset (
//                'assets/images/pentagram_orange.png'
//                );
//        case 4:
//            return Image.asset (
//                'assets/images/pentagram_purple.png'
//                );
//        case 5:
//            return Image.asset (
//                'assets/images/pentagram_red.png'
//                );
//        case 6:
//            return Image.asset (
//                'assets/images/pentagram_violet.png'
//                );
//        case 7:
//            return Image.asset (
//                'assets/images/pentagram_yellow.png'
//                );
//        default:
//            return Image.asset (
//                'assets/images/pentagram_yellow.png'
//                );
//    }
//}
//
//Widget appButton(String label, Function function, ButtonSizes bs,
//                 {IconData icon}) {
//    double buttonSize = bs == ButtonSizes.med ? medButtonWidth : smallButtonWidth;
//
//    return Container(
//        width: buttonSize,
//        child: RaisedButton(
//            padding: EdgeInsets.all(corePadding),
//            color: function == null ? colorLightestGray :  colorGreen,
//            child: Text(label, style:function == null ?buttonDisabledTextStyle() :buttonTextStyle()),
//            onPressed: function,
//            ),
//        );
//
//}
//
//
//Widget appLoading() {
//    return Center(
//        child: SizedBox(
//            width: 500.0,//deviceWidth * INDICATOR_SIZE_PERCENTAGE,
//            height: 500.0, // deviceWidth * INDICATOR_SIZE_PERCENTAGE,
//            child: CircularProgressIndicator(
//                backgroundColor: colorGreen,
//                strokeWidth: INDICATOR_STROKE_SIZE,
//                ),
//            ),
//        );
//}