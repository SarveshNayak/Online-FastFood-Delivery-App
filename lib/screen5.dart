import 'package:flutter/material.dart';
import 'Screen9.dart';
import 'package:wdl_project/note.dart';
import 'package:wdl_project/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class Screen5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen5a();
  }
}

class Screen5a extends State<Screen5> {
  int rsp = 0;
  int wsp = 0;
  int tcp = 0;
  int cmp = 0;
  int awsp = 0;
  int mcp = 0;

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
                child: Text('Pasta',
                    style: TextStyle(color: Colors.white, fontSize: 45)),
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
                  child: Text('Red Sauce Pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 454),
                Align(
                  alignment: Alignment.center,
                  child: Text('110/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 430),
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
                            if (rsp > 0) {
                              rsp--;
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
                            rsp++;
                          });
                        })),
                Container(width: 15),
                Text("$rsp",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('White Sauce Pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 430),
                Align(
                  alignment: Alignment.center,
                  child: Text('110/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 430),
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
                            if (wsp > 0) {
                              wsp--;
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
                            wsp++;
                          });
                        })),
                Container(width: 15),
                Text("$wsp",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Triple Cheese Pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 413),
                Align(
                  alignment: Alignment.center,
                  child: Text('130/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 430),
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
                            if (tcp > 0) {
                              tcp--;
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
                            tcp++;
                          });
                        })),
                Container(width: 16),
                Text("$tcp",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Creamy Mushroom Pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 352),
                Align(
                  alignment: Alignment.center,
                  child: Text('140/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 432),
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
                            if (cmp > 0) {
                              cmp--;
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
                            cmp++;
                          });
                        })),
                Container(width: 15),
                Text("$cmp",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Americano White Sauce Pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 293),
                Align(
                  alignment: Alignment.center,
                  child: Text('150/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 433),
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
                            if (awsp > 0) {
                              awsp--;
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
                            awsp++;
                          });
                        })),
                Container(width: 15),
                Text("$awsp",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Mac and Cheese Pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 382),
                Align(
                  alignment: Alignment.center,
                  child: Text('150/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 432),
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
                            if (mcp > 0) {
                              mcp--;
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
                            mcp++;
                          });
                        })),
                Container(width: 15),
                Text("$mcp",
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen9(),
                          ));
                    });
                  }),
            ),
          ],
        )
      ])),
    ));
  }
}
