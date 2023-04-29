import 'package:assignment_portfolio/constants/data.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../cards/stats_card.dart';

class Stats extends StatelessWidget {
  const Stats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        // padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatsCard(
              color: bgColor[3],
              title: data[0]["exp"]["year"],
              subtitle: "Years Experience",
              textC: textColor[1],
            ),
            StatsCard(
              color: bgColor[4],
              title: data[0]["exp"]["projects"],
              subtitle: "Handled Projects",
              textC: textColor[2],
            ),
            StatsCard(
              color: bgColor[5],
              title: data[0]["exp"]["clients"],
              subtitle: "Clients",
              textC: textColor[1],
            )
          ],
        ),
      ),
    );
  }
}
