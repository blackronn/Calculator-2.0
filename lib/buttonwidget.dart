import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;
  final Function clickbtn;

  const ButtonWidget({
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.fontSize,
    required this.clickbtn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      child: SizedBox(
        width: 80,
        height: 80,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
            ),
          ),
          onPressed: () {
            clickbtn(text);
          },
        ),
      ),
    );
  }
}
