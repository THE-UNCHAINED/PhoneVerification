import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBlueButton extends StatelessWidget {
  final double width;
  final String text;
  const CustomBlueButton({Key? key, required this.width, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: width,
      color: const Color(0xff05386b),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.roboto(
              fontSize: 19, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
