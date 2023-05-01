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
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(10.0),
      // padding: const EdgeInsets.all(20.0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StatsCard(
            color: bgColor[3],
            title: data[0]["exp"]["year"],
            subtitle: "Years Experience",
            textC: textColor[1],
          ),
          buildWidth(width < 500 ? 20.0 : 10.0),
          StatsCard(
            color: bgColor[4],
            title: data[0]["exp"]["projects"],
            subtitle: "Handled Projects",
            textC: textColor[2],
          ),
          buildWidth(width < 500 ? 20.0 : 10.0),
          StatsCard(
            color: bgColor[5],
            title: data[0]["exp"]["clients"],
            subtitle: "Clients",
            textC: textColor[1],
          )
        ],
      ),
    );
  }

  SizedBox buildWidth(double width) {
    return SizedBox(width: width);
  }
}
