import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/data.dart';

class PortfolioCard extends StatelessWidget {
  final String link;
  final bool text;
  const PortfolioCard({
    super.key,
    required this.link,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            color: bgColor[2],
            borderRadius: BorderRadius.circular(20.0),
            // image: DecorationImage(
            //   image: NetworkImage(link),
            //   // fit: BoxFit.cover,
            // ),
          ),
          child: Center(
            child: text
                ? Text(
                    "Read More",
                    style: GoogleFonts.poppins(
                      color: textColor[1],
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
