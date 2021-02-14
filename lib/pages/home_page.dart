import 'package:flutter/material.dart';
import 'package:foodre_delivery/pages/welcome_page.dart';
import 'package:foodre_delivery/widgets/goods_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showProfileDialog = false;

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
                                      width: _width * 0.023,
                                      child: Image.asset(
                                        'assets/images/icons/bread.png',
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
                                      width: _width * 0.023,
                                      child: Image.asset(
                                        'assets/images/icons/harvest.png',
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
                                      width: _width * 0.023,
                                      child: Image.asset(
                                        'assets/images/icons/milk.png',
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
                                      width: _width * 0.023,
                                      child: Image.asset(
                                        'assets/images/icons/softdrinks.png',
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
                                      width: _width * 0.023,
                                      child: Image.asset(
                                        'assets/images/icons/cupcake.png',
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
                                      width: _width * 0.023,
                                      child: Image.asset(
                                        'assets/images/icons/meat.png',
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.24),
                      margin: EdgeInsets.only(top: _width * 0.014),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Пекарня',
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
                        collection: 'goods',
                        document: '1',
                        good: 'Пекарня',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.24),
                      margin: EdgeInsets.only(top: _width * 0.014),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Фрукти і овочі',
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
                        collection: 'goods',
                        document: '1',
                        good: 'Фрукти і овочі',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.24),
                      margin: EdgeInsets.only(top: _width * 0.014),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Молочне і яйця',
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
                        collection: 'goods',
                        document: '1',
                        good: 'Молочне і яйця',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.24),
                      margin: EdgeInsets.only(top: _width * 0.014),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Напої',
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
                        collection: 'goods',
                        document: '1',
                        good: 'Напої',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.24),
                      margin: EdgeInsets.only(top: _width * 0.014),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Солодощі',
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
                        collection: 'goods',
                        document: '1',
                        good: 'Солодощі',
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: _width * 0.24),
                      margin: EdgeInsets.only(top: _width * 0.014),
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'М\'ясо, риба, птиця',
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
                        collection: 'goods',
                        document: '1',
                        good: 'М\'ясо, риба, птиця',
                      ),
                    ),
                    SizedBox(height: _width * 0.12),
                  ],
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
