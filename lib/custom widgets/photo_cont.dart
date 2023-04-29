import 'package:flutter/material.dart';

import '../constants/colors.dart';

class PhotoCont extends StatelessWidget {
  const PhotoCont({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: const EdgeInsets.all(5.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: bgColor[5],
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
