import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/const.dart';
import '../constants/data.dart';

class LocationCont extends StatelessWidget {
  const LocationCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: bgColor[1],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Based In:",
                  style: buildName(),
                ),
                const Spacer(),
                Text(
                  data[0]["me"]["location"],
                  style: buildAnswer(),
                )
              ],
            ),
            Flexible(
                child: Container(
              // color: bgColor[2],
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(data[0]["me"]["map"]))),
            ))
          ],
        ),
      ),
    );
  }
}
