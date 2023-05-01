import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/data.dart';

class Quote extends StatelessWidget {
  const Quote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: bgColor[1], borderRadius: BorderRadius.circular(25)),
      child: Stack(
        children: [
          Text(
            data[0]["quote"],
            style: GoogleFonts.poppins(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 20.0,
                  ),
                  backgroundColor: bgColor[2],
                  foregroundColor: textColor[1],
                ),
                onPressed: () {},
                child: Text(
                  "Hire Me 👋",
                  style: GoogleFonts.poppins(),
                ),
              ))
        ],
      ),
    );
  }
}
