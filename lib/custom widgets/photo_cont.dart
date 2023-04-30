import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/data.dart';

class PhotoCont extends StatelessWidget {
  const PhotoCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: bgColor[2],
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            image: AssetImage(
              data[0]["me"]["image"],
            ),
            fit: BoxFit.fitWidth,
            alignment: Alignment.bottomCenter),
      ),
    );
  }
}
