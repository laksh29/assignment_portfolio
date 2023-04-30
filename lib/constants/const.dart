import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

SizedBox buildHeight(double height) {
  return SizedBox(height: height);
}

TextStyle buildHeading1() {
  return GoogleFonts.poppins(
    color: textColor[1],
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
}

TextStyle buildHeading2() {
  return GoogleFonts.poppins(
    color: textColor[0],
    fontSize: 22,
    fontWeight: FontWeight.w300,
  );
}

TextStyle buildName() {
  return GoogleFonts.poppins(
    color: textColor[0],
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}

TextStyle buildAnswer() {
  return GoogleFonts.poppins(
    color: textColor[1],
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );
}
