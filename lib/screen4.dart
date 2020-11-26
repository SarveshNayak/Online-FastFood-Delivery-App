import 'package:flutter/material.dart';
import 'screen9.dart';
import 'package:wdl_project/note.dart';
import 'package:wdl_project/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class Screen4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen4a();
  }
}

class Screen4a extends State<Screen4> {
  int vb = 0;
  int vcb = 0;
  int vdcb = 0;
  int vatb = 0;
  int vcdtb = 0;
  int vpob = 0;
  int vcmb = 0;
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
                child: Text('Burger',
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
                  child: Text('Veg Burger',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 527),
                Align(
                  alignment: Alignment.center,
                  child: Text('70/-',
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
                            if (vb > 0) {
                              vb--;
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
                            vb++;
                          });
                        })),
                Container(width: 15),
                Text("$vb", style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Cheese Burger',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 430),
                Align(
                  alignment: Alignment.center,
                  child: Text('75/-',
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
                            if (vcb > 0) {
                              vcb--;
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
                            vcb++;
                          });
                        })),
                Container(width: 15),
                Text("$vcb",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Double Cheese Burger',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 340),
                Align(
                  alignment: Alignment.center,
                  child: Text('80/-',
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
                            if (vdcb > 0) {
                              vdcb--;
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
                            vdcb++;
                          });
                        })),
                Container(width: 16),
                Text("$vdcb",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Aloo Tikki Burger',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 396),
                Align(
                  alignment: Alignment.center,
                  child: Text('90/-',
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
                            if (vatb > 0) {
                              vatb--;
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
                            vatb++;
                          });
                        })),
                Container(width: 15),
                Text("$vatb",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Cheese Double Tikki Burger',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 256),
                Align(
                  alignment: Alignment.center,
                  child: Text('100/-',
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
                            if (vcdtb > 0) {
                              vcdtb--;
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
                            vcdtb++;
                          });
                        })),
                Container(width: 15),
                Text("$vcdtb",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Paneer Overload Burger',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 302),
                Align(
                  alignment: Alignment.center,
                  child: Text('130/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 435),
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
                            if (vpob > 0) {
                              vpob--;
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
                            vpob++;
                          });
                        })),
                Container(width: 15),
                Text("$vpob",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 10),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Cheese Meltdown Burger',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 287),
                Align(
                  alignment: Alignment.center,
                  child: Text('130/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 435),
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
                            if (vcmb > 0) {
                              vcmb--;
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
                            vcmb++;
                          });
                        })),
                Container(width: 15),
                Text("$vcmb",
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
