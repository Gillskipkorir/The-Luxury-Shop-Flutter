import 'package:flutter/material.dart';
import 'package:the_luxury_shop/fitness_app/material_home/material_screen.dart';

import '../../fintness_app_theme.dart';

class GrandSuperWax extends StatelessWidget {
  final AnimationController animationController;
  final Animation<double> animation;

  const GrandSuperWax(
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
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 4, right: 4, top: 8, bottom: 8),
              child: Container(
                padding: const EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.grey[400]!, Colors.grey],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: FitnessAppTheme.grey.withOpacity(0.6),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 5.0),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "Grand Super Wax",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 26.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SelectedMaterial(
                                          materialName: "Grand Super Wax",
                                        )),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        FitnessAppTheme.grey,
                                        FitnessAppTheme.nearlyWhite
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: FitnessAppTheme.grey
                                            .withOpacity(0.6),
                                        offset: const Offset(1.1, 1.1),
                                        blurRadius: 5.0),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0)),
                                        child: AspectRatio(
                                            aspectRatio: 0.9,
                                            child: Image.asset(
                                              "assets/materials/new_grand_super.jpg",
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Grand \n Super Wax',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: FitnessAppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          letterSpacing: 1.0,
                                          color: FitnessAppTheme.nearlyBlack,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        FitnessAppTheme.grey,
                                        FitnessAppTheme.nearlyWhite
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: FitnessAppTheme.grey
                                            .withOpacity(0.6),
                                        offset: const Offset(1.1, 1.1),
                                        blurRadius: 5.0),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SelectedMaterial(
                                                  materialName:
                                                      "Grand Super \nEdition Limitee",
                                                )),
                                      );
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        ClipRRect(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(6.0)),
                                          child: AspectRatio(
                                              aspectRatio: 0.9,
                                              child: Image.asset(
                                                "assets/materials/grand_super_limited.jpeg",
                                                fit: BoxFit.cover,
                                              )),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                          'Grand Super \n Edition Limitee',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily:
                                                FitnessAppTheme.fontName,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            letterSpacing: 1.0,
                                            color: FitnessAppTheme.nearlyBlack,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}