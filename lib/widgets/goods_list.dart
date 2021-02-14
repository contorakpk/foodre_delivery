import 'package:flutter/material.dart';

class GoodsList extends StatelessWidget {
  final int length;
  final String name;
  final String description;
  final String price;
  final String weight;
  GoodsList(
      {this.length, this.name, this.description, this.price, this.weight});

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: length,
      itemBuilder: (BuildContext context, int index) {
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
                    color: Colors.grey,
                    width: double.maxFinite,
                    height: _width * 0.12,
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
                            child: Image.asset('assets/images/icons/add.png'),
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
                      '   $price грн',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: _width * 0.012),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: _width * 0.17),
                    width: _width * 0.2,
                    child: Text(
                      '   $description',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: _width * 0.012),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: _width * 0.19),
                    width: _width * 0.2,
                    child: Text(
                      '    $weight г',
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
      },
    );
  }
}
