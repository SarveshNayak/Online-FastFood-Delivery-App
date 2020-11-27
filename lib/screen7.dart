import 'package:flutter/material.dart';
import 'screen9.dart';
// import 'package:wdl_project/note.dart';
// import 'package:wdl_project/database_helper.dart';
// import 'package:sqflite/sqflite.dart';

class Screen7 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen7a();
  }
}

class Screen7a extends State<Screen7> {
  int cmn = 0;
  int tcn = 0;
  int spn = 0;
  int ppsn = 0;
  int cln = 0;
  @override
  Widget build(BuildContext context) {
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
                child: Text('Nachos',
                    style: TextStyle(color: Colors.white, fontSize: 40)),
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
                  child: Text('Classic Mexican Nachos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 367),
                Align(
                  alignment: Alignment.center,
                  child: Text('120/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 418),
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
                            if (cmn > 0) {
                              cmn--;
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
                            cmn++;
                          });
                        })),
                Container(width: 15),
                Text("$cmn",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Tripple Cheese Nachos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 380),
                Align(
                  alignment: Alignment.center,
                  child: Text('140/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 420),
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
                            if (tcn > 0) {
                              tcn--;
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
                            tcn++;
                          });
                        })),
                Container(width: 15),
                Text("$tcn",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Shredded Paneer Nachos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 353),
                Align(
                  alignment: Alignment.center,
                  child: Text('140/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 420),
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
                            if (spn > 0) {
                              spn--;
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
                            spn++;
                          });
                        })),
                Container(width: 16),
                Text("$spn",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Peri Peri Spicy Nachos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 380),
                Align(
                  alignment: Alignment.center,
                  child: Text('150/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 422),
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
                            if (ppsn > 0) {
                              ppsn--;
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
                            ppsn++;
                          });
                        })),
                Container(width: 15),
                Text("$ppsn",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Cheese Loaded Nachos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 374),
                Align(
                  alignment: Alignment.center,
                  child: Text('150/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 422),
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
                            if (cln > 0) {
                              cln--;
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
                            cln++;
                          });
                        })),
                Container(width: 15),
                Text("$cln",
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
                      if (cmn > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, cmn);
                        }));
                      }
                      if (tcn > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, tcn);
                        }));
                      }
                      if (spn > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, spn);
                        }));
                      }
                      if (ppsn > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, ppsn);
                        }));
                      }
                      if (cln > 0) {
                        //_save();
                        String user = "Classic Fries";
                        int age = 70;
                        Navigator.push(context,
                            new MaterialPageRoute(builder: (context) {
                          return Screen9(user, age, cln);
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
}
