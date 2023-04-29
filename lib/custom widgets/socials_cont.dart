import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/data.dart';

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
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff0a66c2),
                ),
                child: SvgPicture.network(
                  data[0]["socials"]["linkedin"],
                  semanticsLabel: 'My Image',
                  color: textColor[1],
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor[6],
                ),
                child: SvgPicture.network(
                  data[0]["socials"]["dribbble"],
                  semanticsLabel: 'My Image',
                  color: textColor[1],
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor[6],
                ),
                child: SvgPicture.network(
                  data[0]["socials"]["twitter"],
                  semanticsLabel: 'My Image',
                  color: textColor[1],
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor[6],
                ),
                child: SvgPicture.network(
                  data[0]["socials"]["instagram"],
                  semanticsLabel: 'My Image',
                  color: textColor[1],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
