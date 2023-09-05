import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  BigText({Key? key,
    required this.stylTex,

    required this.bigText,
  }) : super(key: key);

  final String bigText;
  final TextStyle stylTex;
  Widget build(BuildContext context) {
    return Text(
        bigText,
        style: stylTex
      // const TextStyle(
      //     color: Colors.grey,
      //     letterSpacing: 5,
      //     fontWeight: FontWeight.bold,
      //     //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
      //     //decoration: TextDecoration.underline,
      //     //decorationStyle: TextDecorationStyle.dashed,
      //     decorationColor: Colors.green,
      //     decorationThickness: 1),
    );
  }
}
