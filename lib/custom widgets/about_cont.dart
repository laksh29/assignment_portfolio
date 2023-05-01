import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/const.dart';
import '../constants/data.dart';
import '../constants/colors.dart';

class AboutCont extends StatelessWidget {
  final int fold;
  const AboutCont({
    required this.fold,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(30.0),
      decoration: BoxDecoration(
          color: bgColor[1], borderRadius: BorderRadius.circular(25)),
      child: Column(children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Text(
                "About",
                style: buildHeading1(),
              ),
              const Spacer(),
              Text(
                "Resume",
                style: buildHeading2(),
              )
            ],
          ),
        ),
        buildHeight(20.0),
        Flexible(
            flex: 4,
            child: Text(
              data[0]["about"],
              style: GoogleFonts.poppins(
                color: textColor[0],
                fontSize: 12.2,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
              maxLines: fold,
              overflow: TextOverflow.ellipsis,
            ))
      ]),
    );
  }
}
