import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class PortfolioCard extends StatelessWidget {
  final String? link;
  final bool text;
  const PortfolioCard({
    super.key,
    required this.link,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          decoration: BoxDecoration(
            // color: bgColor[2],
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(link.toString()),
              fit: BoxFit.cover,
              colorFilter: text
                  ? ColorFilter.mode(
                      textColor[2].withOpacity(0.7), BlendMode.srcATop)
                  : null,
            ),
          ),
          child: Center(
            child: text
                ? Text(
                    "Read More",
                    // link.toString(),
                    style: GoogleFonts.poppins(
                      color: textColor[1],
                      fontSize: width < 500
                          ? 18
                          : width > 1016
                              ? 18
                              : 12,
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
