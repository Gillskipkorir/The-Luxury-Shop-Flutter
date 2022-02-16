import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:the_luxury_shop/auth/screens/login_screen.dart';
import 'package:the_luxury_shop/fitness_app/fintness_app_theme.dart';

import 'about_us_page.dart';
import 'adverts_page.dart';
import 'contacts_page.dart';
import 'materials_page.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreenn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Luxury Shop"),
        titleTextStyle: const TextStyle(
          letterSpacing: 2.0,
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow[9000],
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: Colors.yellow[9000],
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
                const SizedBox(height: 15.0),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 15.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Admin Page',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                                letterSpacing: 2.0,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            margin: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AdminMaterialsPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      FitnessAppTheme.white,
                                      Colors.grey
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color:
                                          FitnessAppTheme.grey.withOpacity(0.6),
                                      offset: const Offset(1.1, 1.1),
                                      blurRadius: 5.0),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FitnessAppTheme.nearlyWhite,
                                              shape: BoxShape.circle,
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    color: FitnessAppTheme
                                                        .nearlyBlack
                                                        .withOpacity(0.1),
                                                    blurRadius: 8.0),
                                              ],
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.edit,
                                                color: FitnessAppTheme.yellow,
                                                size: 40,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Edit  \n Materials',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: FitnessAppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          letterSpacing: 0.0,
                                          color: FitnessAppTheme.nearlyBlack,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
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
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AdminAdvertsPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      FitnessAppTheme.white,
                                      Colors.grey
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color:
                                          FitnessAppTheme.grey.withOpacity(0.6),
                                      offset: const Offset(1.1, 1.1),
                                      blurRadius: 5.0),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FitnessAppTheme.nearlyWhite,
                                              shape: BoxShape.circle,
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    color: FitnessAppTheme
                                                        .nearlyBlack
                                                        .withOpacity(0.1),
                                                    blurRadius: 8.0),
                                              ],
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.edit,
                                                color: FitnessAppTheme.yellow,
                                                size: 40,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Post \nNew Advert',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: FitnessAppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          letterSpacing: 0.0,
                                          color: FitnessAppTheme.nearlyBlack,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AdminContactUsPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      FitnessAppTheme.white,
                                      Colors.grey
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color:
                                          FitnessAppTheme.grey.withOpacity(0.6),
                                      offset: const Offset(1.1, 1.1),
                                      blurRadius: 5.0),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FitnessAppTheme.nearlyWhite,
                                              shape: BoxShape.circle,
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    color: FitnessAppTheme
                                                        .nearlyBlack
                                                        .withOpacity(0.1),
                                                    blurRadius: 8.0),
                                              ],
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.edit,
                                                color: FitnessAppTheme.yellow,
                                                size: 40,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Edit \nContact Info',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: FitnessAppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          letterSpacing: 0.0,
                                          color: FitnessAppTheme.nearlyBlack,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
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
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AdminAboutUsPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      FitnessAppTheme.white,
                                      Colors.grey
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color:
                                          FitnessAppTheme.grey.withOpacity(0.6),
                                      offset: const Offset(1.1, 1.1),
                                      blurRadius: 5.0),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FitnessAppTheme.nearlyWhite,
                                              shape: BoxShape.circle,
                                              boxShadow: <BoxShadow>[
                                                BoxShadow(
                                                    color: FitnessAppTheme
                                                        .nearlyBlack
                                                        .withOpacity(0.1),
                                                    blurRadius: 8.0),
                                              ],
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Icon(
                                                Icons.edit,
                                                color: FitnessAppTheme.yellow,
                                                size: 40,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Edit \n About Us',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: FitnessAppTheme.fontName,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24,
                                          letterSpacing: 0.0,
                                          color: FitnessAppTheme.nearlyBlack,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: FitnessAppTheme.yellow,
        splashColor: Colors.blue,
        onPressed: () {
          logout(context);
        },
        child: const Icon(
          Icons.lock,
          color: FitnessAppTheme.white,
        ),
      ),
    );
  }
}
