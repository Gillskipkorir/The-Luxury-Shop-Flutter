import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:the_luxury_shop/auth/screens/login_screen.dart';
import 'package:the_luxury_shop/fitness_app/fintness_app_theme.dart';
import 'package:the_luxury_shop/hotel_booking/hotel_app_theme.dart';
import 'package:the_luxury_shop/hotel_booking/model/hotel_list_data.dart';

class AdminContactUsPage extends StatefulWidget {
  const AdminContactUsPage({Key? key}) : super(key: key);

  @override
  _AdminContactUsPageState createState() => _AdminContactUsPageState();
}

class _AdminContactUsPageState extends State<AdminContactUsPage>
    with TickerProviderStateMixin {
  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreenn()));
  }

  late AnimationController animationController;
  List<HotelListData> hotelList = HotelListData.hotelList;
  final ScrollController _scrollController = ScrollController();

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 5));

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: HotelAppTheme.buildLightTheme(),
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
              'Edit Contact Details',
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
