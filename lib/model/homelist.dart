import 'package:flutter/widgets.dart';
import 'package:the_luxury_shop/design_course/home_design_course.dart';
import 'package:the_luxury_shop/fitness_app/fitness_app_home_screen.dart';
import 'package:the_luxury_shop/hotel_booking/hotel_home_screen.dart';

class HomeList {
  HomeList({
    required this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/hotel/hotel_booking.png',
      navigateScreen: OurStoresScreen(),
    ),
    HomeList(
      imagePath: 'assets/fitness_app/fitness_app.png',
      navigateScreen: FitnessAppHomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/design_course/design_course.png',
      navigateScreen: DesignCourseHomeScreen(),
    ),
  ];
}