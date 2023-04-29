import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SocialsCont extends StatelessWidget {
  const SocialsCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: bgColor[1],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor[6],
                ),
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor[6],
                ),
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor[6],
                ),
              ),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor[6],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
