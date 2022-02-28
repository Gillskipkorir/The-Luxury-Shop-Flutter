import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_luxury_shop/fitness_app/fintness_app_theme.dart';
import 'package:the_luxury_shop/fitness_app/material_home/default_app_theme.dart';

class AdminAboutUsPage extends StatefulWidget {
  const AdminAboutUsPage({Key? key}) : super(key: key);

  @override
  _AdminAboutUsPageState createState() => _AdminAboutUsPageState();
}

class _AdminAboutUsPageState extends State<AdminAboutUsPage>
    with TickerProviderStateMixin {
  // the logout function

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: DefaultAppTheme.buildLightTheme(),
      child: Scaffold(
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
          children: <Widget>[
            getAppBarUI(),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  Widget getAppBarUI() {
    return Container(
      decoration: BoxDecoration(
        color: FitnessAppTheme.yellow,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: 8,
            right: 8,
            bottom: 16),
        child: const Expanded(
          child: Center(
            child: Text(
              'Edit about us',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  color: FitnessAppTheme.white),
            ),
          ),
        ),
      ),
    );
  }
}

class ContestTabHeader extends SliverPersistentHeaderDelegate {
  ContestTabHeader(
    this.searchUI,
  );

  final Widget searchUI;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return searchUI;
  }

  @override
  double get maxExtent => 52.0;

  @override
  double get minExtent => 52.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
