import 'package:flutter/material.dart';
import 'dart:async';
import 'screen9.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

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
  int clf1;
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
  void initState() {
    super.initState();
    
  }

  Future<bool> saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setInt(clf);
  }

  Future<int> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt(clf);
  }

  setData(){
    loadData().then((value){
      setState(() {
        data=value;
      });
    })
  }
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
        Container(height: 30),
        Row(children: [
          Container(width: 30),
          Container(
              height: 120,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.00),
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.grey,
                //image: DecorationImage(
                //image: AssetImage('images/fries.jpg'),
                //fit: BoxFit.cover,
                //)
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text('Fries',
                    style: TextStyle(color: Colors.white, fontSize: 50)),
              )),
        ]),
        Container(height: 20),
        Container(
            width: 1300,
            height: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.00),
              border: Border.all(width: 2, color: Colors.white),
              color: Colors.transparent,
            ),
            child: Column(children: [
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Classic Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 472),
                Align(
                  alignment: Alignment.center,
                  child: Text('70/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 468),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('-',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (clf > 0) {
                              clf--;
                            }
                            saveData();
                          });
                        })),
                Container(width: 10),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('+',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            // if (clf == null) {
                            //   clf = 0;
                            // }
                            clf++;
                            saveData();
                          });
                        })),
                Container(width: 15),
                Text(classicFries(clf),
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Cheese Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 470),
                Align(
                  alignment: Alignment.center,
                  child: Text('80/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 470),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('-',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (chf > 0) {
                              chf--;
                            }
                          });
                        })),
                Container(width: 10),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('+',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            chf++;
                          });
                        })),
                Container(width: 15),
                Text("$chf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Chilli Cheese Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 400),
                Align(
                  alignment: Alignment.center,
                  child: Text('95/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 470),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('-',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (ccf > 0) {
                              ccf--;
                            }
                          });
                        })),
                Container(width: 10),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('+',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            ccf++;
                          });
                        })),
                Container(width: 16),
                Text("$ccf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Mayo Cheese Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 396),
                Align(
                  alignment: Alignment.center,
                  child: Text('95/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 472),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('-',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (mcf > 0) {
                              mcf--;
                            }
                          });
                        })),
                Container(width: 10),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('+',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            mcf++;
                          });
                        })),
                Container(width: 15),
                Text("$mcf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('BBQ Cheese Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 394),
                Align(
                  alignment: Alignment.center,
                  child: Text('100/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 472),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('-',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (bcf > 0) {
                              bcf--;
                            }
                          });
                        })),
                Container(width: 10),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('+',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            bcf++;
                          });
                        })),
                Container(width: 15),
                Text("$bcf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Sweet Chilli Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 398),
                Align(
                  alignment: Alignment.center,
                  child: Text('100/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 471),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('-',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (scf > 0) {
                              scf--;
                            }
                          });
                        })),
                Container(width: 10),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('+',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            scf++;
                          });
                        })),
                Container(width: 15),
                Text("$scf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Peri Peri Fries',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 435),
                Align(
                  alignment: Alignment.center,
                  child: Text('110/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 472),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text('-',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            if (ppf > 0) {
                              ppf--;
                            }
                          });
                        })),
                Container(width: 10),
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.00),
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.transparent,
                    ),
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.00),
                        ),
                        color: Colors.transparent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('+',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30)),
                        ),
                        onPressed: () {
                          setState(() {
                            ppf++;
                          });
                        })),
                Container(width: 15),
                Text("$ppf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
            ])),
        Row(
          children: [
            Container(
              width: 25,
            ),
            Container(
              padding: EdgeInsets.all(10.00),
              width: 250.00,
              height: 80.00,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.00)),
                  color: Colors.yellow[700],
                  child: Text(
                    "MENU",
                    style: TextStyle(fontSize: 40.00, color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      clf1 = clf;
                      Navigator.pop(
                        context,
                      );
                    });
                  }),
            ),
            Container(
              width: 820,
            ),
            Container(
              padding: EdgeInsets.all(10.00),
              width: 250.00,
              height: 80.00,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.00)),
                  color: Colors.yellow[700],
                  child: Text(
                    "PAYMENT",
                    style: TextStyle(fontSize: 40.00, color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      if (clf > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, clf);
                        }));
                      }
                      if (chf > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, chf);
                        }));
                      }
                      if (ccf > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, ccf);
                        }));
                      }
                      if (mcf > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, mcf);
                        }));
                      }
                      if (bcf > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, bcf);
                        }));
                      }
                      if (scf > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, scf);
                        }));
                      }
                      if (ppf > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, ppf);
                        }));
                      }
                    });
                  }),
            ),
          ],
        )
      ])),
    ));
  }

  String classicFries(int clf) {
    String c = clf.toString();
    String result;
    if (c == "null") {
      result = "0";
    } else {
      result = "$c";
    }
    return result;
  }

//   void _save() async {
//     moveToLastScreenFunction();

//     if (note.item != null) {
//       await helper.updateNote(note);
//     } else {
//       await helper.insertNote(note);
//     }
//   }
}
