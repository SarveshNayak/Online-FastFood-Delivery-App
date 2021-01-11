import 'package:flutter/material.dart';
import 'dart:async';
import 'screen9.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/services.dart';

// import 'package:wdl_project/note.dart';
// import 'package:wdl_project/database_helper.dart';
// import 'package:sqflite/sqflite.dart';

class Screen3 extends StatefulWidget {
  // DatabaseHelper databaseHelper = DatabaseHelper();

  @override
  State<StatefulWidget> createState() {
    return Screen3a();
  }
}

class Screen3a extends State<Screen3> {
  //int clf1;
  int clf = 0;
  int data;
  int chf = 0;
  int ccf = 0;
  int mcf = 0;
  int bcf = 0;
  int scf = 0;
  int ppf = 0;

  //DatabaseHelper helper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    //clf = clf1;
    return Scaffold(
        body: Container(
      width: 1500,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/pic1.jpg'),
        fit: BoxFit.cover,
      )),
      child: Container(
          child: ListView(
        children: [
          Column(children: [
            Container(height: MediaQuery.of(context).size.height * 0.04),
            Row(children: [
              Container(width: MediaQuery.of(context).size.width * 0.03),
              Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.94,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: Colors.white),
                    color: Colors.transparent,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Fries',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        )),
                  )),
            ]),
            Container(height: MediaQuery.of(context).size.height * 0.02),
            Container(
                width: MediaQuery.of(context).size.width * 0.94,
                height: MediaQuery.of(context).size.height * 0.74,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.00),
                  border: Border.all(width: 2, color: Colors.white),
                  color: Colors.transparent,
                ),
                child: Column(children: [
                  Container(height: MediaQuery.of(context).size.height * 0.013),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('Classic Fries',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.12),
                    Text('70/-',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.05),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.00),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.00),
                            ),
                            color: Colors.transparent,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            onPressed: () {
                              setState(() {
                                // if (clf == null) {
                                //   clf = 0;
                                // }
                                clf++;
                                String name = "Classic Fries";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('Cheese Fries',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.12),
                    Text('80/-',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.05),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.00),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.00),
                            ),
                            color: Colors.transparent,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            onPressed: () {
                              setState(() {
                                chf++;
                                String name = "Cheese Fries";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('Chilli Cheese',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.11),
                    Text('95/-',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.05),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.00),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.00),
                            ),
                            color: Colors.transparent,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            onPressed: () {
                              setState(() {
                                ccf++;
                                String name = "Chilli Cheese Fries";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Fries',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('Mayo Cheese',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.10),
                    Text('95/-',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.05),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.00),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.00),
                            ),
                            color: Colors.transparent,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            onPressed: () {
                              setState(() {
                                mcf++;
                                String name = "Mayo Cheese Fries";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Fries',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('BBQ Cheese',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.095),
                    Align(
                      alignment: Alignment.center,
                      child: Text('100/-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.05),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.00),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.00),
                            ),
                            color: Colors.transparent,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            onPressed: () {
                              setState(() {
                                bcf++;
                                String name = "BBQ Cheese Fries";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Fries',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: 10),
                    Text('Sweet Chilli',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.11),
                    Text('100/-',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.05),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.00),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.00),
                            ),
                            color: Colors.transparent,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            onPressed: () {
                              setState(() {
                                scf++;
                                String name = "Sweet Chilli Fries";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Fries',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('Peri Peri',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.2),
                    Text('110/-',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                    Container(width: MediaQuery.of(context).size.width * 0.05),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.145,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.00),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.00),
                            ),
                            color: Colors.transparent,
                            child: Text('+',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            onPressed: () {
                              setState(() {
                                ppf++;
                                String name = "Peri Peri Fries";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Fries',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                ])),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                ),
                Container(
                  padding: EdgeInsets.all(10.00),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.00)),
                      color: Colors.green[400],
                      child: Text(
                        "CART",
                        style: TextStyle(fontSize: 35.00, color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          // if (clf > 0) {
                          //   //_save();
                          //   String user = "Classic Fries";
                          //   int age = 70;
                          //   Navigator.push(context,
                          //       new MaterialPageRoute(builder: (context) {
                          //     return Screen9(user, age, clf);
                          //   }));
                          // }
                          // if (chf > 0) {
                          //   //_save();
                          //   String user = "Classic Fries";
                          //   int age = 70;
                          //   Navigator.push(context,
                          //       new MaterialPageRoute(builder: (context) {
                          //     return Screen9(user, age, chf);
                          //   }));
                          // }
                          // if (ccf > 0) {
                          //   //_save();
                          //   String user = "Classic Fries";
                          //   int age = 70;
                          //   Navigator.push(context,
                          //       new MaterialPageRoute(builder: (context) {
                          //     return Screen9(user, age, ccf);
                          //   }));
                          // }
                          // if (mcf > 0) {
                          //   //_save();
                          //   String user = "Classic Fries";
                          //   int age = 70;
                          //   Navigator.push(context,
                          //       new MaterialPageRoute(builder: (context) {
                          //     return Screen9(user, age, mcf);
                          //   }));
                          // }
                          // if (bcf > 0) {
                          //   //_save();
                          //   String user = "Classic Fries";
                          //   int age = 70;
                          //   Navigator.push(context,
                          //       new MaterialPageRoute(builder: (context) {
                          //     return Screen9(user, age, bcf);
                          //   }));
                          // }
                          // if (scf > 0) {
                          //   //_save();
                          //   String user = "Classic Fries";
                          //   int age = 70;
                          //   Navigator.push(context,
                          //       new MaterialPageRoute(builder: (context) {
                          //     return Screen9(user, age, scf);
                          //   }));
                          // }
                          // if (ppf > 0) {
                          //   //_save();
                          //   String user = "Classic Fries";
                          //   int age = 70;
                          //   Navigator.push(context,
                          //       new MaterialPageRoute(builder: (context) {
                          //     return Screen9(user, age, ppf);
                          //   }));
                          // }
                        });
                      }),
                ),
              ],
            ),
            Container(height: MediaQuery.of(context).size.height * 0.02),
          ])
        ],
      )),
    ));
  }

  void popUp(BuildContext context, String name) {
    var alertDialog = AlertDialog(
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: Text("$name \nAdded To Cart",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          )),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  // String classicFries(int clf) {
  //   String c = clf.toString();
  //   String result;
  //   if (c == "null") {
  //     result = "0";
  //   } else {
  //     result = "$c";
  //   }
  //   return result;
  // }

//   void _save() async {
//     moveToLastScreenFunction();

//     if (note.item != null) {
//       await helper.updateNote(note);
//     } else {
//       await helper.insertNote(note);
//     }
//   }
}
