import 'package:assignment_portfolio/custom%20widgets/quote_cont.dart';
import 'package:assignment_portfolio/custom%20widgets/stats_cont.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../custom widgets/about_cont.dart';
import '../custom widgets/location_cont.dart';
import '../custom widgets/menu_cont.dart';
import '../custom widgets/name_cont.dart';
import '../custom widgets/photo_cont.dart';
import '../custom widgets/portfolio_cont.dart';
import '../custom widgets/socials_cont.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AspectRatio(
          aspectRatio: 175 / 1016,
          child: Container(
            height: 1000,
            margin:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: bgColor[0],
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 70, child: MenuCont()),
                SizedBox(height: 500, child: PhotoCont()),
                SizedBox(height: 70, child: NameCont()),
                SizedBox(height: 200, child: LocationCont()),
                SizedBox(height: 70, child: SocialsCont()),
                SizedBox(height: 300, child: Quote()),
                SizedBox(height: 350, child: Stats()),
                SizedBox(
                    height: 250,
                    child: AboutCont(
                      fold: 7,
                    )),
                SizedBox(height: 250, child: PortfolioCont())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
