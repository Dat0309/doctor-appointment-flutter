import 'package:doctor_appointment/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextCustom extends StatelessWidget {
  final String headerText;
  final String footerText;
  final double fontSize;

  const RichTextCustom({
    Key? key,
    required this.headerText,
    required this.footerText,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: fontSize,
          color: Colors.white,
          letterSpacing: 1.9,
        ),
        children: [
          TextSpan(
            text: headerText,
            style: const TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: footerText,
            style: TextStyle(
              color: thirthColor,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
