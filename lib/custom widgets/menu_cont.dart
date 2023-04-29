import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/data.dart';

class MenuCont extends StatelessWidget {
  const MenuCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: bgColor[1], borderRadius: BorderRadius.circular(15)),
      child: Row(
        // mainAxisAlignment:
        //     MainAxisAlignment.spaceEvenly,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: data[0]["me"]["gibrish1"],
                  style: GoogleFonts.poppins(
                    color: textColor[0],
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: data[0]["me"]["gibrish2"],
                  style: GoogleFonts.poppins(
                    color: textColor[1],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          // Text("$width"),
          const Spacer(),
          Icon(
            Icons.menu_rounded,
            color: textColor[1],
          )
        ],
      ),
    );
  }
}
