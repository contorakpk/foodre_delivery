import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:firebase/firebase.dart' as _firebase;

class GoodsLineBuilder extends StatelessWidget {
  final String goods;

  GoodsLineBuilder({this.goods});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    CollectionReference _goods = FirebaseFirestore.instance
        .collection('goods')
        .doc('1')
        .collection('$goods');

        

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
          scrollDirection: Axis.horizontal,
          children: snapshot.data.docs.map((DocumentSnapshot document) {
            return Row(
              children: [
                Container(
                  width: _width * 0.14,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: _width * 0.0124,
                            left: _width * 0.02,
                            right: _width * 0.02),
                        width: double.maxFinite,
                        height: _width * 0.12,
                        child: Image.network(document.data()['image']),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: _width * 0.112, left: _width * 0.08),
                        width: _width * 0.046,
                        height: _width * 0.021,
                        child: MaterialButton(
                          onPressed: () {},
                          color: Colors.green[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: _width * 0.005),
                              Container(
                                width: _width * 0.012,
                                child:
                                    Image.asset('assets/images/icons/add.png'),
                              ),
                              SizedBox(width: _width * 0.003),
                              Container(
                                width: _width * 0.012,
                                child: Image.asset(
                                    'assets/images/icons/shopping-cart2.png'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: _width * 0.12),
                        width: _width * 0.014,
                        child: Image.asset('assets/images/icons/heart3.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _width * 0.15),
                        width: _width * 0.2,
                        child: Text(
                          '   ${document.data()['price']}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: _width * 0.012),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _width * 0.17),
                        width: _width * 0.2,
                        child: Text(
                          '   ${document.data()['name']}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: _width * 0.012),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: _width * 0.19),
                        width: _width * 0.2,
                        child: Text(
                          '    ${document.data()['weight']}',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: _width * 0.012),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: _width * 0.01),
              ],
            );
          }).toList(),
        );
      },
    );
  }
}
