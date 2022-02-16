import 'package:flutter/material.dart';
import 'package:the_luxury_shop/fitness_app/fintness_app_theme.dart';
import 'package:the_luxury_shop/fitness_app/material_admin/selected_material.dart';

class AllMaterials extends StatelessWidget {
  const AllMaterials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 8, bottom: 8),
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
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const SelectedMaterial(
                                                    materialName:
                                                    "Grand Super Wax",
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
                                                borderRadius:
                                                    const BorderRadius.all(
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
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color: FitnessAppTheme
                                                      .nearlyBlack,
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
                                          borderRadius:
                                              const BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(8.0),
                                                  bottomLeft:
                                                      Radius.circular(8.0),
                                                  bottomRight:
                                                      Radius.circular(8.0),
                                                  topRight:
                                                      Radius.circular(8.0)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: FitnessAppTheme.grey
                                                    .withOpacity(0.6),
                                                offset:
                                                    const Offset(1.1, 1.1),
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
                                                      "Grand Super Wax \n Edition Limitee",
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
                                                  borderRadius:
                                                      const BorderRadius.all(
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
                                                    fontFamily: FitnessAppTheme
                                                        .fontName,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    letterSpacing: 1.0,
                                                    color: FitnessAppTheme
                                                        .nearlyBlack,
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

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 8, bottom: 8),
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
                              "Super Wax",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
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
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const SelectedMaterial(
                                                    materialName:
                                                    "Super Wax",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.7,
                                                    child: Image.asset(
                                                      "assets/materials/super_wax.jpeg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Super \n Wax',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
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
                                                    "Super Wax Classic",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.7,
                                                    child: Image.asset(
                                                      "assets/materials/super_wax_classic.jpeg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Super \n Wax Classic',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
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
                                                    "Super Wax \n Edition Limitee",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.7,
                                                    child: Image.asset(
                                                      "assets/materials/super_wax_limited.jpeg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Super Wax\n Edition Limitee ',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
                                                ),
                                              ),
                                            ],
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

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 8, bottom: 8),
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
                              "Wax Hollandais",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
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
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const SelectedMaterial(
                                                    materialName:
                                                    "Wax Hollandais",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.7,
                                                    child: Image.asset(
                                                      "assets/materials/wax_hollandais.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Wax \n Hollandais',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
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
                                                    "Hollandais Wax Stretch",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.7,
                                                    child: Image.asset(
                                                      "assets/materials/hollandais_wax_stretch.jpeg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Hollandais \n Wax Stretch',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
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
                                                    " Wax Hollandais \n Edition Limitee",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.7,
                                                    child: Image.asset(
                                                      "assets/materials/wax_hollandais_limited.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Wax Hollandais \n Edition Limitee',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
                                                ),
                                              ),
                                            ],
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

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 8, bottom: 8),
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
                              "Other Varieties",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
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
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const SelectedMaterial(
                                                    materialName:
                                                    "Glitter Glam",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.9,
                                                    child: Image.asset(
                                                      "assets/materials/glitter_glam.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              const Text(
                                                'Glitter Glam',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
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
                                                    "Sky Wax",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.9,
                                                    child: Image.asset(
                                                      "assets/materials/sky_wax.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              const Text(
                                                'Sky Wax',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
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
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const SelectedMaterial(
                                                    materialName:
                                                    "Woodin",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.9,
                                                    child: Image.asset(
                                                      "assets/materials/woodin.jpeg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              const Text(
                                                'Woodin',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
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
                                                    "Classic Revival",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.9,
                                                    child: Image.asset(
                                                      "assets/materials/classic_revival.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 16,
                                              ),
                                              const Text(
                                                'Classic Revival',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
                                                ),
                                              ),
                                            ],
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

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 8, bottom: 8),
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
                              "Other Products",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 26.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
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
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const SelectedMaterial(
                                                    materialName:
                                                    "Make Ups",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.9,
                                                    child: Image.asset(
                                                      "assets/materials/make_ups.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Make Ups',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
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
                                                    "Wigs",
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
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6.0)),
                                                child: AspectRatio(
                                                    aspectRatio: 0.9,
                                                    child: Image.asset(
                                                      "assets/materials/hair_wigs.jpg",
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Hair Wigs',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  letterSpacing: 1.0,
                                                  color:
                                                      FitnessAppTheme.nearlyBlack,
                                                ),
                                              ),
                                            ],
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
