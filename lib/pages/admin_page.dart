import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:foodre_delivery/db/storage/db_storage_add.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  String _category = 'Категорія товару';

  bool _isAdd = false;
  bool _isAddTovar = false;
  bool _isAddCategory = false;

  TextEditingController _categoryController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    CollectionReference _goods =
        FirebaseFirestore.instance.collection('categories');

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MaterialButton(
                    color: Colors.teal[200],
                    onPressed: () {
                      setState(() {
                        _isAdd = true;
                        _isAddTovar = true;
                      });
                    },
                    child: Text('\n       Добавити товар       \n'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  SizedBox(height: _width * 0.03),
                  MaterialButton(
                    color: Colors.teal[200],
                    onPressed: () {
                      setState(() {
                        _isAdd = true;
                        _isAddCategory = true;
                      });
                    },
                    child: Text('\n       Добавити категорію       \n'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  SizedBox(height: _width * 0.06),
                  MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('\n       Вийти       \n'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ]),
          ),
          _isAdd == true
              ? InkWell(
                  onTap: () {
                    setState(() {
                      _isAdd = false;
                      _isAddTovar = false;
                      _isAddCategory = false;
                    });
                  },
                  child: Container(
                    width: double.maxFinite,
                    height: _width * 2.3,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                )
              : SizedBox(),
          _isAddTovar
              ? Center(
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(_width * 0.04),
                    width: _width * 0.42,
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
                      children: [
                        Container(
                          child: Text(
                            'Категорія товару',
                            style: TextStyle(
                              fontSize: _width * 0.012,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.005),
                        StreamBuilder<QuerySnapshot>(
                            stream: _goods.snapshots(),
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.hasError) {
                                return Text('Помилка');
                              }

                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return CircularProgressIndicator();
                              }

                              return DropdownButton<String>(
                                hint: Text(_category),
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _category = val;
                                    },
                                  );
                                },
                                items: snapshot.data.docs
                                    .map((DocumentSnapshot document) {
                                  return DropdownMenuItem<String>(
                                    value: document.data()['name'],
                                    child: Text(document.data()['name']),
                                  );
                                }).toList(),
                              );
                            }),
                        SizedBox(height: _width * 0.02),
                        Container(
                          child: Text(
                            'Назва товару',
                            style: TextStyle(
                              fontSize: _width * 0.012,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.005),
                        Container(
                          width: _width * 0.32,
                          height: _width * 0.03,
                          child: TextField(
                            controller: _nameController,
                            autocorrect: true,
                            decoration: InputDecoration(
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
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.02),
                        Container(
                          child: Text(
                            'Ціна товару',
                            style: TextStyle(
                              fontSize: _width * 0.012,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.005),
                        Container(
                          width: _width * 0.32,
                          height: _width * 0.03,
                          child: TextField(
                            controller: _priceController,
                            autocorrect: true,
                            decoration: InputDecoration(
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
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.02),
                        Container(
                          child: Text(
                            'Вага товару',
                            style: TextStyle(
                              fontSize: _width * 0.012,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.005),
                        Container(
                          width: _width * 0.32,
                          height: _width * 0.03,
                          child: TextField(
                            controller: _weightController,
                            autocorrect: true,
                            decoration: InputDecoration(
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
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.02),
                        Container(
                          child: Text(
                            'Картинка товару (силка)',
                            style: TextStyle(
                              fontSize: _width * 0.012,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.005),
                        Container(
                          width: _width * 0.32,
                          height: _width * 0.03,
                          child: TextField(
                            controller: _imageController,
                            autocorrect: true,
                            decoration: InputDecoration(
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
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.04),
                        MaterialButton(
                          onPressed: () async {
                            await DBStorageAdd().newTovar(
                                _category,
                                _nameController.text,
                                _priceController.text,
                                _weightController.text,
                                _imageController.text);

                            Future.delayed(Duration(seconds: 3), () {
                              _nameController.clear();
                              _priceController.clear();
                              _weightController.clear();
                              _imageController.clear();

                              setState(() {
                                _isAdd = false;
                                _isAddTovar = false;
                              });
                            });
                          },
                          color: Colors.teal[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Text('\nДобавити товар\n'),
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(),
          _isAddCategory
              ? Center(
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(_width * 0.04),
                    width: _width * 0.42,
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
                      children: [
                        Container(
                          child: Text(
                            'Назва категорії',
                            style: TextStyle(
                              fontSize: _width * 0.012,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.005),
                        Container(
                          width: _width * 0.32,
                          height: _width * 0.03,
                          child: TextField(
                            controller: _categoryController,
                            autocorrect: true,
                            decoration: InputDecoration(
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
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: _width * 0.02,
                        ),
                        Container(
                          child: Text(
                            'Картинка товару (силка)',
                            style: TextStyle(
                              fontSize: _width * 0.012,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.005),
                        Container(
                          width: _width * 0.32,
                          height: _width * 0.03,
                          child: TextField(
                            controller: _imageController,
                            autocorrect: true,
                            decoration: InputDecoration(
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
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: _width * 0.04),
                        MaterialButton(
                          onPressed: () async {
                            await DBStorageAdd().newCategory(
                                _categoryController.text,
                                _imageController.text);

                            Future.delayed(Duration(seconds: 3), () {
                              _categoryController.clear();
                              _nameController.clear();
                              _priceController.clear();
                              _weightController.clear();
                              _imageController.clear();

                              setState(() {
                                _isAdd = false;
                                _isAddCategory = false;
                              });
                            });
                          },
                          color: Colors.teal[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Text('\nДобавити категорію\n'),
                        ),
                      ],
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
