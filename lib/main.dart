import 'package:assignment_portfolio/constants/colors.dart';
import 'package:flutter/material.dart';

import 'custom widgets/about_cont.dart';
import 'custom widgets/photo_cont.dart';
import 'custom widgets/location_cont.dart';
import 'custom widgets/menu_cont.dart';
import 'custom widgets/name_cont.dart';
import 'custom widgets/portfolio_cont.dart';
import 'custom widgets/quote_cont.dart';
import 'custom widgets/socials_cont.dart';
import 'custom widgets/stats_cont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment Portfolio',
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 1016 / 792,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 30.0,
            ),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: bgColor[0],
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(children: const [
                            Quote(),
                            Stats(),
                          ])),
                      Expanded(
                        child: Column(
                          children: [
                            const MenuCont(),
                            Expanded(
                              flex: 5,
                              child: Row(
                                children: [
                                  const PhotoCont(),
                                  Flexible(
                                    child: Column(
                                      children: const [
                                        NameCont(),
                                        LocationCont(),
                                        SocialsCont(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // const MenuCont(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Row(
                      children: const [
                        PortfolioCont(),
                        AboutCont(),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
