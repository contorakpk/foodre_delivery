import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: _width * 0.04,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      '   FOODRE',
                      style: TextStyle(
                        fontSize: _width * 0.027,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[500],
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '(000)0000000                ',
                      style: TextStyle(
                        fontSize: _width * 0.013,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.teal[500],
              width: double.infinity,
              height: _width * 0.04,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: _width * 0.016),
                    width: _width * 0.15,
                    height: _width * 0.02,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.teal[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: _width * 0.01,
                            height: _width * 0.01,
                            child: Image.asset(
                              'assets/images/icons/category.jpg',
                              scale: _width * 0.01,
                            ),
                          ),
                          SizedBox(width: _width * 0.003),
                          Text(
                            'Каталог товарів',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _width * 0.01,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: _width * 0.062),
                    width: _width * 0.32,
                    height: _width * 0.02,
                    child: TextField(
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: 'Пошук у FOODRE',
                        suffixIcon: Icon(Icons.search, size: _width * 0.016,),
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: _width * 0.01,
                        ),
                        contentPadding: EdgeInsets.only(
                            left: _width * 0.01, bottom: _width * 0.01),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 2),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: _width * 0.212),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            width: _width * 0.01,
                            height: _width * 0.01,
                            child: Image.asset(
                              'assets/images/icons/heart_star.png',
                              scale: _width * 0.01,
                            ),
                          ),
                          SizedBox(width: _width * 0.006),
                          Text(
                            'Списки',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _width * 0.01,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: _width * 0.025),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Container(
                            width: _width * 0.01,
                            height: _width * 0.01,
                            child: Image.asset(
                              'assets/images/icons/user.png',
                              scale: _width * 0.01,
                            ),
                          ),
                          SizedBox(width: _width * 0.006),
                          Text(
                            'Увійти',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _width * 0.01,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: _width * 0.025),
                    width: _width * 0.08,
                    height: _width * 0.02,
                    child: MaterialButton(
                      onPressed: () {},
                      color: Colors.teal[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: _width * 0.01,
                            height: _width * 0.01,
                            child: Image.asset(
                              'assets/images/icons/shopping-cart.png',
                              scale: _width * 0.01,
                            ),
                          ),
                          SizedBox(width: _width * 0.003),
                          Text(
                            'Кошик',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _width * 0.011,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: _width * 0.02, top: _width * 0.02),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(_width * 0.02),
                    width: _width * 0.191,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: _width * 0.007,
                      children: [
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/icons/bread.png',
                                    scale: _width * 0.009,
                                  ),
                                ),
                                SizedBox(width: _width * 0.008),
                                Text(
                                  'Пекарня',
                                  style: TextStyle(
                                    fontSize: _width * 0.013,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/icons/harvest.png',
                                    scale: _width * 0.009,
                                  ),
                                ),
                                SizedBox(width: _width * 0.008),
                                Text(
                                  'Фрукти і овочі',
                                  style: TextStyle(
                                    fontSize: _width * 0.013,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/icons/milk.png',
                                    scale: _width * 0.009,
                                  ),
                                ),
                                SizedBox(width: _width * 0.008),
                                Text(
                                  'Молочне і яйця',
                                  style: TextStyle(
                                    fontSize: _width * 0.013,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/icons/softdrinks.png',
                                    scale: _width * 0.009,
                                  ),
                                ),
                                SizedBox(width: _width * 0.008),
                                Text(
                                  'Напої',
                                  style: TextStyle(
                                    fontSize: _width * 0.013,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/icons/cupcake.png',
                                    scale: _width * 0.009,
                                  ),
                                ),
                                SizedBox(width: _width * 0.008),
                                Text(
                                  'Солодощі',
                                  style: TextStyle(
                                    fontSize: _width * 0.013,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    'assets/images/icons/meat.png',
                                    scale: _width * 0.009,
                                  ),
                                ),
                                SizedBox(width: _width * 0.008),
                                Text(
                                  'М\'ясо, риба, птиця',
                                  style: TextStyle(
                                    fontSize: _width * 0.013,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: _width * 0.02),
                  Container(
                    width: _width * 0.74,
                    height: _width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.only(left: _width * 0.02),
                        width: _width * 0.6,
                        height: _width * 0.3,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: _width * 0.06),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/foodre_delivery.png',
                                    scale: _width * 0.0013,
                                  ),
                                  SizedBox(height: _width * 0.05),
                                  Text(
                                    'Замовляй онлайн — забирай офлайн',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: _width * 0.015,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: _width * 0.05),
                            Image.asset(
                              'assets/images/deliver.png',
                              scale: _width * 0.0013,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
