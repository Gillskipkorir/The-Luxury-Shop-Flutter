import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as Path;

class AddImage extends StatefulWidget {
  final String materialName;

  const AddImage({Key? key, required this.materialName}) : super(key: key);

  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  bool uploading = false;
  double val = 0;
  late CollectionReference imgRef;
  late firebase_storage.Reference ref;

  final List<File> _image = [];
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //title: const Text('Add Material Image'),
          title: Text(widget.materialName),
          titleTextStyle: const TextStyle(
            letterSpacing: 2.0,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow[9000],
          elevation: 0.0,
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    uploading = true;
                  });
                  uploadFile().whenComplete(() => Navigator.of(context).pop());
                },
                child: const Text(
                  'Upload',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              child: GridView.builder(
                  itemCount: _image.length + 1,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Center(
                        child: Container(
                          color: Colors.grey,
                          child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                              onPressed: () =>
                                  !uploading ? chooseImage() : null),
                        ),
                      );
                    } else {
                      return Container(
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: FileImage(_image[index - 1]),
                                fit: BoxFit.cover)),
                      );
                    }
                  }),
            ),
            uploading
                ? Center(
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Uploading...',
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CircularProgressIndicator(
                        value: val,
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.yellow),
                      )
                    ],
                  ))
                : Container(),
          ],
        ));
  }

  chooseImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image.add(File(pickedFile!.path));
    });
    if (pickedFile?.path == null) retrieveLostData();
  }

  Future<void> retrieveLostData() async {
    final LostData response = await picker.getLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        _image.add(File(response.file!.path));
      });
    } else {
      print(response.file);
    }
  }

  Future uploadFile() async {
    int i = 1;

    for (var img in _image) {
      setState(() {
        val = i / _image.length;
      });
      ref = firebase_storage.FirebaseStorage.instance
          .ref()
          .child("${widget.materialName}/${Path.basename(img.path)}");
      await ref.putFile(img).whenComplete(() async {
        await ref.getDownloadURL().then((value) {
          imgRef.add({'imageUri': value});
          i++;
        });
      });
    }
  }

  @override
  void initState() {
    super.initState();
    //imgRef = FirebaseFirestore.instance.collection('imageURLs');
    imgRef = FirebaseFirestore.instance.collection("MaterialCategory_Test").doc(widget.materialName).collection("Materials");
  }
}
