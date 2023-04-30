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

class BeechView extends StatelessWidget {
  const BeechView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AspectRatio(
          aspectRatio: 600 / 1016,
          child: Container(
            height: 2000,
            margin: const EdgeInsets.symmetric(vertical: 30.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: bgColor[0],
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuCont(),
                  Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Flexible(flex: 1, child: PhotoCont()),
                          Expanded(
                            child: Column(
                              children: [
                                Flexible(flex: 1, child: NameCont()),
                                Flexible(flex: 4, child: LocationCont()),
                                Flexible(flex: 1, child: SocialsCont()),
                              ],
                            ),
                          )
                        ],
                      )),
                  Quote(),
                  SizedBox(height: 300, child: Stats()),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Flexible(
                              flex: 1,
                              child: AboutCont(
                                fold: 5,
                              )),
                          Flexible(flex: 1, child: PortfolioCont())
                        ],
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
