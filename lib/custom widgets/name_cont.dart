import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/const.dart';
import '../constants/data.dart';

class NameCont extends StatelessWidget {
  const NameCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: bgColor[1],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(
              "Name:",
              style: buildName(),
            ),
            const Spacer(),
            Text(
              data[0]["me"]["name"],
              style: buildAnswer(),
            )
          ],
        ),
      ),
    );
  }
}
