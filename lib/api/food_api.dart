import 'package:foodre_delivery/model/food.dart';
import 'package:foodre_delivery/notifiers/food_notifier.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

getFoods(FoodNotifier foodNotifier) async {
  List<Food> _foodList = [];

  await FirebaseFirestore.instance.collection('goods').doc('1').collection('drinks').get().then((QuerySnapshot querySnapshot) => {
    querySnapshot.docs.forEach((doc) {
      Food food = Food.fromMap(doc.data());
      _foodList.add(food);
    })
  });

  foodNotifier.foodList = _foodList;
}