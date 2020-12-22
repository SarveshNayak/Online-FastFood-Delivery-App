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
          child: Column(children: [
        Container(height: MediaQuery.of(context).size.height * 0.07),
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
            height: MediaQuery.of(context).size.height * 0.665,
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
                Align(
                  alignment: Alignment.center,
                  child: Text('Classic Fries',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.12),
                Align(
                  alignment: Alignment.center,
                  child: Text('70/-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.05),
                Container(
                    width: 60,
                    height: 40,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        onPressed: () {
                          setState(() {
                            // if (clf == null) {
                            //   clf = 0;
                            // }
                            clf++;
                            SnackBar mysnackbar =
                                SnackBar(content: Text("Item added to cart"));
                            Scaffold.of(context).showSnackBar(mysnackbar);
                          });
                        })),
                Container(width: MediaQuery.of(context).size.width * 0.03),
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: MediaQuery.of(context).size.width * 0.03),
                Align(
                  alignment: Alignment.center,
                  child: Text('Cheese Fries',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.12),
                Align(
                  alignment: Alignment.center,
                  child: Text('80/-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.05),
                Container(
                    width: 60,
                    height: 40,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        onPressed: () {
                          setState(() {
                            chf++;
                          });
                        })),
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: MediaQuery.of(context).size.width * 0.03),
                Align(
                  alignment: Alignment.center,
                  child: Text('Chilli Cheese',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.11),
                Align(
                  alignment: Alignment.center,
                  child: Text('95/-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.05),
                Container(
                    width: 60,
                    height: 40,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        onPressed: () {
                          setState(() {
                            ccf++;
                          });
                        })),
              ])),
              Row(
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.03),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Fries',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: MediaQuery.of(context).size.width * 0.03),
                Align(
                  alignment: Alignment.center,
                  child: Text('Mayo Cheese',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.10),
                Align(
                  alignment: Alignment.center,
                  child: Text('95/-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.05),
                Container(
                    width: 60,
                    height: 40,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        onPressed: () {
                          setState(() {
                            mcf++;
                          });
                        })),
              ])),
              Row(
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.03),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Fries',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: MediaQuery.of(context).size.width * 0.03),
                Align(
                  alignment: Alignment.center,
                  child: Text('BBQ Cheese',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
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
                    width: 60,
                    height: 40,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        onPressed: () {
                          setState(() {
                            bcf++;
                          });
                        })),
              ])),
              Row(
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.03),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Fries',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Sweet Chilli',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.11),
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
                    width: 60,
                    height: 40,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        onPressed: () {
                          setState(() {
                            scf++;
                          });
                        })),
              ])),
              Row(
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.03),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Fries',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: MediaQuery.of(context).size.width * 0.03),
                Align(
                  alignment: Alignment.center,
                  child: Text('Peri Peri',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.2),
                Align(
                  alignment: Alignment.center,
                  child: Text('110/-',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.05),
                Container(
                    width: 60,
                    height: 40,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        onPressed: () {
                          setState(() {
                            ppf++;
                          });
                        })),
              ])),
              Row(
                children: [
                  Container(width: MediaQuery.of(context).size.width * 0.03),
                  Align(
                    alignment: Alignment.center,
                    child: Text('Fries',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ])),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
            ),
            Container(
              padding: EdgeInsets.all(10.00),
              width: 250.00,
              height: 80.00,
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
        )
      ])),
    ));
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
