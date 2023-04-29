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

class BeechView extends StatelessWidget {
  const BeechView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AspectRatio(
          aspectRatio: 500 / 1016,
          child: Container(
            height: 2000,
            margin: const EdgeInsets.symmetric(vertical: 30.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: bgColor[0],
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                const MenuCont(),
                Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        const Flexible(flex: 1, child: PhotoCont()),
                        Expanded(
                          child: Column(
                            children: const [
                              Flexible(flex: 1, child: NameCont()),
                              Flexible(flex: 4, child: LocationCont()),
                              Flexible(flex: 1, child: SocialsCont()),
                            ],
                          ),
                        )
                      ],
                    )),
                const Flexible(flex: 3, child: AboutCont()),
                const Flexible(flex: 3, child: PortfolioCont())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
