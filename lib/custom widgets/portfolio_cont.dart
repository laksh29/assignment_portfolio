import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/const.dart';
import '../constants/data.dart';
import '../cards/portfolio_card.dart';

class PortfolioCont extends StatelessWidget {
  const PortfolioCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
        flex: 3,
        child: Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
              color: bgColor[1], borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "UI Portfolio",
                    style: buildHeading1(),
                  ),
                  const Spacer(),
                  Text(
                    "See All",
                    style: buildHeading2(),
                  ),
                ],
              ),
              buildHeight(20.0),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data[0]["portfolio"].length!,
                  itemBuilder: (context, index) {
                    return PortfolioCard(
                      link: "",
                      text: index == 0 ? true : false,
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
