import 'package:flutter/material.dart';

class TextRichMac extends StatelessWidget {
  final String first;
  final String last;
  final double fontSize;

  TextRichMac({this.first, this.last, this.fontSize = 11});
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: first,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        ),
        children: [
          TextSpan(
            text: last,
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
