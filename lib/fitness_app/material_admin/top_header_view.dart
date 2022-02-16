import 'package:flutter/material.dart';

import '../fintness_app_theme.dart';

class TopHeaderView extends StatelessWidget {
  final AnimationController animationController;
  final Animation<double> animation;

  const TopHeaderView(
      {Key? key, required this.animationController, required this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - animation.value), 0.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: FitnessAppTheme.yellow,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                    boxShadow: [
                      BoxShadow(
                          color: FitnessAppTheme.yellow.withOpacity(0.9),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 90.0),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Welcome',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26.0,
                                letterSpacing: 1.5,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25.0),
                      const Text(
                        'Admin Dashboard',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 26.0,
                            letterSpacing: 1.5,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        );
      },
    );
  }
}
