import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../custom widgets/about_cont.dart';
import '../custom widgets/location_cont.dart';
import '../custom widgets/menu_cont.dart';
import '../custom widgets/name_cont.dart';
import '../custom widgets/photo_cont.dart';
import '../custom widgets/portfolio_cont.dart';
import '../custom widgets/quote_cont.dart';
import '../custom widgets/socials_cont.dart';
import '../custom widgets/stats_cont.dart';

class WebAndTab extends StatelessWidget {
  const WebAndTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 1016 / 792,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 30.0,
          ),
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: bgColor[0],
            borderRadius: BorderRadius.circular(40),
          ),
          child: const Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(children: [
                          Quote(),
                          Stats(),
                        ])),
                    Expanded(
                      child: Column(
                        children: [
                          MenuCont(),
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Flexible(flex: 1, child: PhotoCont()),
                                Flexible(
                                  child: Column(
                                    children: const [
                                      Flexible(flex: 1, child: NameCont()),
                                      Flexible(flex: 4, child: LocationCont()),
                                      Flexible(flex: 1, child: SocialsCont()),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // const MenuCont(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: const [
                      Flexible(flex: 3, child: PortfolioCont()),
                      Flexible(
                          flex: 2,
                          child: AboutCont(
                            fold: 10,
                          )),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
