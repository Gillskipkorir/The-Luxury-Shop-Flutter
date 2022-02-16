import 'package:flutter/material.dart';
import 'package:the_luxury_shop/design_course/design_course_app_theme.dart';
import 'package:the_luxury_shop/fitness_app/fintness_app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class AdminMaterialInfoScreen extends StatefulWidget {
  final String documentId;
  final String imageUrl;
  final String materialname;

  const AdminMaterialInfoScreen(
      {required this.imageUrl, required this.materialname, required this.documentId});

  @override
  _AdminMaterialInfoScreenState createState() =>
      _AdminMaterialInfoScreenState();
}

class _AdminMaterialInfoScreenState extends State<AdminMaterialInfoScreen>
    with TickerProviderStateMixin {
  final double infoHeight = 364.0;
  late AnimationController animationController;
  late Animation<double> animation;

  double opacity1 = 0.0;
  double opacity2 = 0.0;
  double opacity3 = 0.0;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0, 1.0, curve: Curves.fastOutSlowIn)));
    setData();
    super.initState();
  }

  Future<void> setData() async {
    animationController.forward();
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity1 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity2 = 1.0;
    });
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    setState(() {
      opacity3 = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
        body: Stack(
          children: [
            Column(
              children: [
                AspectRatio(
                  aspectRatio: 0.6,
                  child: FadeInImage.memoryNetwork(
                      fit: BoxFit.cover,
                      fadeInDuration: const Duration(milliseconds: 70),
                      placeholder: kTransparentImage,
                      image: widget.imageUrl),
                ),
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.width / 0.695),
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: DesignCourseAppTheme.nearlyWhite,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(52.0),
                      topRight: Radius.circular(52.0)),
                  boxShadow: [
                    BoxShadow(
                        color: DesignCourseAppTheme.grey.withOpacity(0.9),
                        offset: const Offset(1.1, 1.1),
                        blurRadius: 90.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 18, right: 16),
                              child: Text(
                                widget.materialname,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  letterSpacing: 2.0,
                                  color: DesignCourseAppTheme.darkerText,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 18, right: 16),
                              child: Text(
                                widget.documentId,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  letterSpacing: 1.2,
                                  color: DesignCourseAppTheme.darkerText,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Center(
                              child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 300),
                                opacity: opacity1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: const <Widget>[
                                      Icon(
                                        Icons.check_box,
                                        color: Colors.green,
                                        size: 25,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "In Stock",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          letterSpacing: 0.27,
                                          color: DesignCourseAppTheme.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity: opacity3,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 16, bottom: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FitnessAppTheme.yellow,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                      border: Border.all(
                                          color: FitnessAppTheme.yellow
                                              .withOpacity(0.9)),
                                    ),
                                    child: const Icon(
                                      Icons.delete,
                                      color: DesignCourseAppTheme.nearlyWhite,
                                      size: 28,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () async {
                                      //TODO DELETE IMAGE FUNCTIONALITY
                                    },
                                    child: Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: FitnessAppTheme.yellow,
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                              color: FitnessAppTheme.yellow
                                                  .withOpacity(0.9),
                                              offset: const Offset(1.1, 1.1),
                                              blurRadius: 16.0),
                                        ],
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Delete This Material',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            letterSpacing: 0.0,
                                            color: DesignCourseAppTheme
                                                .nearlyWhite,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
