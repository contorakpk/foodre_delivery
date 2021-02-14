import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DBStorageAdd {
  var error;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  setCollection(String name) {
    CollectionReference collection =
        FirebaseFirestore.instance.collection(name);
    return collection;
  }

  Future<String> addGood(
      String _category,
      String _name,
      String _price,
      String _weight,
      String _amount,
      String _calories,
      String _proteins,
      String _fats,
      String _carbohydrates) {
    CollectionReference users = setCollection('goods');
    users
        .doc('1')
        .collection(_category)
        .doc(_name)
        .set({
          'category': _category,
          'name': _name,
          'price': _price,
          'weight': _weight,
          'amount': _amount,
          'calories': _calories,
          'proteins': _proteins,
          'fats': _fats,
          'carbohydrates': _carbohydrates,
        })
        .then((value) => error = 'Good Added')
        .catchError((catchE) => error = 'Failed to add good: $catchE');

    return error;
  }

  Future<String> newUserCollection(
      String _email, String _password, String _phone, String uid) {
    CollectionReference users = setCollection('users');
    users
        .doc(uid)
        .set({
          'email': _email,
          'password': _password,
          'phone': _phone,
          'role': 'user',
          'uid': uid,
        })
        .then((value) => error = 'User Added')
        .catchError((catchE) => error = 'Failed to add user: $catchE');

    return error;
  }
}
