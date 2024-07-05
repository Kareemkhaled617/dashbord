
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:uuid/uuid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? imageUrl;

  Future<void> uploadImage() async {
    final image = await ImagePickerWeb.getImageAsBytes();

    if (image != null) {
      String fileName = const Uuid().v1();
      final storageRef = FirebaseStorage.instance.ref().child('images/$fileName');
      final uploadTask = storageRef.putData(image);

      final snapshot = await uploadTask.whenComplete(() {});
      final downloadUrl = await snapshot.ref.getDownloadURL();

      setState(() {
        imageUrl = downloadUrl;
      });

      // Update Firestore or Realtime Database with the new image URL
      // Firestore.instance.collection('images').add({'url': downloadUrl});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Image'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            imageUrl != null
                ? Image.network(imageUrl!)
                : const Placeholder(fallbackHeight: 200.0, fallbackWidth: 200.0),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: uploadImage,
              child: const Text('Upload Image'),
            ),
          ],
        ),
      ),
    );
  }
}
