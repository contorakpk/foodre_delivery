import 'package:firebase/firebase.dart';
import 'package:flutter/material.dart';

class FireStorageService extends ChangeNotifier {
  FireStorageService._();

  FireStorageService() {
    initializeApp(
      apiKey: "AIzaSyAwZc--vwtxqZTkmUj5Eeh7kso0TNfVjFs",
      authDomain: "foodre-delivery.firebaseapp.com",
      projectId: "foodre-delivery",
      storageBucket: "foodre-delivery.appspot.com",
      messagingSenderId: "1061742062042",
      appId: "1:1061742062042:web:56c8e75511d3c2b142f8e3",
      measurementId: "G-18TSBVFZEM",
    );
  }

  static Future<dynamic> loadFromStorage(
      BuildContext context, String image) async {
    var url = await storage().ref(image).getDownloadURL();
    return url;
  }
}
