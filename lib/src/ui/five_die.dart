import 'package:flutter/material.dart';

class FiveDie extends StatelessWidget {
  final int num;
  final bool small;
  const FiveDie(this.num, {this.small =false, Key key}):super(key:key);

  Image getPentagram(int num) {
    switch (num) {
      case 1:
        return Image.asset (
            'assets/images/pentagram_blue.png'
            );

      case 2:
        return Image.asset (
            'assets/images/pentagram_green.png'
            );
      case 3:
        return Image.asset (
            'assets/images/pentagram_orange.png'
            );
      case 4:
        return Image.asset (
            'assets/images/pentagram_purple.png'
            );
      case 5:
        return Image.asset (
            'assets/images/pentagram_red.png'
            );
      case 6:
        return Image.asset (
            'assets/images/pentagram_violet.png'
            );
      case 7:
        return Image.asset (
            'assets/images/pentagram_yellow.png'
            );
      default:
        return Image.asset (
            'assets/images/pentagram_yellow.png'
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      //
      alignment: Alignment.center,
      children: <Widget>[
        getPentagram(num),
        Text(num.toString(), style: TextStyle(
          fontSize: small ? 35 : 150,
          fontFamily: 'Roboto'
        ),) //, style: small ?dieMiniTextStyle() : dieTextStyle()),
      ],
    );
  }
}
