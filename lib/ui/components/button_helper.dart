import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonHelper(String buttonText, Color buttonColor, Color textColor,
    void Function()? buttonPressed) {
  return Container(
    width: 75,
    //height: buttonText == '=' ? 150 : 74,
    height: 74,
    padding: const EdgeInsets.all(0),
    child: ElevatedButton(
      onPressed: buttonPressed,
      style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          backgroundColor: buttonColor),
      child: Text(
        buttonText,
        style: GoogleFonts.roboto(fontSize: 18, color: textColor),
      ),
    ),
  );
}
