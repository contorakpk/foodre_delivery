import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodre_delivery/widgets/goods_line_builder.dart';

class GoodsBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    CollectionReference _goods =
        FirebaseFirestore.instance.collection('categories');

    return StreamBuilder<QuerySnapshot>(
      stream: _goods.snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Помилка');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        return ListView(
          scrollDirection: Axis.vertical,
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return Column(children: [
              Container(
                padding: EdgeInsets.only(left: _width * 0.24),
                margin: EdgeInsets.only(top: _width * 0.014),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  document.data()['name'],
                  style: TextStyle(
                    fontSize: _width * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: _width * 0.02),
                padding: EdgeInsets.only(left: _width * 0.223),
                width: double.infinity,
                height: _width * 0.21,
                child: GoodsLineBuilder(
                  goods: document.data()['name'],
                ),
              )
            ]);
          }).toList(),
        );
      },
    );
  }
}
