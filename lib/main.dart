import 'package:assignment_portfolio/views/beech_ka_view.dart';
import 'package:assignment_portfolio/views/mobile.dart';
import 'package:assignment_portfolio/views/web_and_tab.dart';
import 'package:flutter/material.dart';

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
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: width > 1020
          ? const WebAndTab()
          : width < 500
              ? const MobileView()
              : const BeechView(),
    );
  }
}
