import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:the_luxury_shop/fitness_app/fintness_app_theme.dart';
import 'package:the_luxury_shop/fitness_app/material_home/selected_material_image.dart';

class SelectedMaterial extends StatelessWidget {
  final String materialName;

  const SelectedMaterial({Key? key, required this.materialName})
      : super(key: key);

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
                        children: [
                          Text(
                            materialName,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
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
          const SizedBox(height: 15.0),
          Flexible(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('MaterialCategory')
                  .doc(materialName)
                  .collection("Materials")
                  .snapshots(),
              builder: (context, snapshot) {
                return !snapshot.hasData
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        padding: const EdgeInsets.all(4),
                        child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: snapshot.data?.docs.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(3),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MaterialInfoScreen(
                                                  imageUrl: snapshot
                                                      .data!.docs[index]
                                                      .get('imageUri'),
                                                  materialname: materialName,
                                                )),
                                      );
                                    },
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      placeholder: (context, url) =>
                                          const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(
                                        Icons.error,
                                        size: 22,
                                      ),
                                      imageUrl:
                                          '${snapshot.data?.docs[index].get('imageUri')}',
                                    )),
                              );
                            }),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
