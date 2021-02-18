import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodre_delivery/pages/admin_page.dart';
import 'package:foodre_delivery/pages/welcome_page.dart';
import 'package:foodre_delivery/widgets/category_tile.dart';
import 'package:foodre_delivery/widgets/goods_builder.dart';

class HomePage extends StatefulWidget {
  final String uid;

  const HomePage({this.uid});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showProfileDialog = false;

  dynamic data;

  Future<dynamic> getData() async {
    final DocumentReference document =
        FirebaseFirestore.instance.collection("users").doc(widget.uid);

    await document.get().then<dynamic>((DocumentSnapshot snapshot) async {
      setState(() {
        data = snapshot.data();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
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
                                child: Image.asset(
                                  'assets/images/icons/catalog.png',
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
                            suffixIcon: Container(
                              width: _width * 0.016,
                              child: Icon(
                                Icons.search,
                              ),
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: _width * 0.01,
                            ),
                            contentPadding: EdgeInsets.only(
                                left: _width * 0.01, bottom: _width * 0.01),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Colors.transparent, width: 2),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: _width * 0.142),
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Container(
                                width: _width * 0.01,
                                child: Image.asset(
                                  'assets/images/icons/heart2.png',
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
                          onPressed: () {
                            setState(() {
                              _showProfileDialog = true;
                            });
                          },
                          child: Row(
                            children: [
                              Container(
                                width: _width * 0.01,
                                child: Image.asset(
                                  'assets/images/icons/user.png',
                                ),
                              ),
                              SizedBox(width: _width * 0.006),
                              Text(
                                'Профіль',
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
                                child: Image.asset(
                                  'assets/images/icons/shopping-cart.png',
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
                  margin:
                      EdgeInsets.only(left: _width * 0.02, top: _width * 0.02),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(_width * 0.02),
                        width: _width * 0.191,
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
                        child: CategoryTile(),
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
                                  padding: EdgeInsets.only(top: _width * 0.04),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: _width * 0.22,
                                        child: Image.asset(
                                          'assets/images/foodre_delivery.png',
                                        ),
                                      ),
                                      SizedBox(height: _width * 0.03),
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
                                Container(
                                  width: _width * 0.25,
                                  child: Image.asset(
                                    'assets/images/deliver.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: double.maxFinite,
                  height: _width * 1.3,
                  child: GoodsBuilder(),
                ),
              ],
            ),
            _showProfileDialog == true
                ? InkWell(
                    onTap: () {
                      setState(() {
                        _showProfileDialog = false;
                      });
                    },
                    child: Container(
                      width: double.maxFinite,
                      height: _width * 2.3,
                      color: Colors.transparent,
                    ),
                  )
                : SizedBox(),
            _showProfileDialog == true
                ? Container(
                    width: _width * 0.15,
                    margin: EdgeInsets.only(
                      left: _width * 0.733,
                      top: _width * 0.074,
                    ),
                    padding: EdgeInsets.symmetric(vertical: _width * 0.018),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: _width * 0.018),
                          child: Text(
                            'Привіт!',
                            style: TextStyle(
                              fontSize: _width * 0.009,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.014),
                        Container(
                          width: double.maxFinite,
                          height: _width * 0.001,
                          color: Colors.grey,
                        ),
                        SizedBox(height: _width * 0.014),
                        Container(
                          margin: EdgeInsets.only(left: _width * 0.018),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  width: _width * 0.013,
                                  child: Image.asset(
                                    'assets/images/icons/calendar.png',
                                  ),
                                ),
                                SizedBox(width: _width * 0.012),
                                Text(
                                  'Замовлення',
                                  style: TextStyle(
                                    fontSize: _width * 0.009,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.014),
                        Container(
                          margin: EdgeInsets.only(left: _width * 0.018),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  width: _width * 0.013,
                                  child: Image.asset(
                                    'assets/images/icons/location.png',
                                  ),
                                ),
                                SizedBox(width: _width * 0.012),
                                Text(
                                  'Адреси',
                                  style: TextStyle(
                                    fontSize: _width * 0.009,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        data['role'] == 'admin'
                            ? Column(
                                children: [
                                  SizedBox(height: _width * 0.014),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: _width * 0.018),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    AdminPage()));
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: _width * 0.013,
                                            child: Image.asset(
                                              'assets/images/icons/admin.jpg',
                                            ),
                                          ),
                                          SizedBox(width: _width * 0.012),
                                          Text(
                                            'Адмін панель',
                                            style: TextStyle(
                                              fontSize: _width * 0.009,
                                              color: Colors.black87,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : SizedBox(),
                        SizedBox(height: _width * 0.014),
                        Container(
                          margin: EdgeInsets.only(left: _width * 0.018),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  width: _width * 0.013,
                                  child: Image.asset(
                                    'assets/images/icons/settings.png',
                                  ),
                                ),
                                SizedBox(width: _width * 0.012),
                                Text(
                                  'Налаштування',
                                  style: TextStyle(
                                    fontSize: _width * 0.009,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.014),
                        Container(
                          width: double.maxFinite,
                          height: _width * 0.001,
                          color: Colors.grey,
                        ),
                        SizedBox(height: _width * 0.014),
                        Container(
                          margin: EdgeInsets.only(left: _width * 0.018),
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WelcomePage()),
                                  (Route<dynamic> route) => false);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: _width * 0.013,
                                  child: Image.asset(
                                    'assets/images/icons/logout.png',
                                  ),
                                ),
                                SizedBox(width: _width * 0.012),
                                Text(
                                  'Вийти',
                                  style: TextStyle(
                                    fontSize: _width * 0.009,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
