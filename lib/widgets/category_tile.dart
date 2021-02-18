import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {

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
            return Container(
              margin: EdgeInsets.only(bottom: _width * 0.01),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: _width * 0.023,
                      child: Image.network(
                        document.data()['image'],
                      ),
                    ),
                    SizedBox(width: _width * 0.008),
                    Text(
                      document.data()['name'],
                      style: TextStyle(
                        fontSize: _width * 0.013,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
