import 'dart:async';

import 'package:flutter/material.dart';
import 'package:the_luxury_shop/fitness_app/material_home/adverts_screen.dart';

import 'fitness_app/fintness_app_theme.dart';
import 'navigation_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const AdvertsScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: FitnessAppTheme.yellow,
                gradient: LinearGradient(
                    colors: [FitnessAppTheme.yellow, FitnessAppTheme.yellow],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: Image.asset(
              "assets/images/ic_launcher.png",
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}
