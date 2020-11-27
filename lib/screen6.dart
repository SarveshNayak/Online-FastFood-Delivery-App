import 'package:flutter/material.dart';
import 'screen9.dart';
// import 'package:wdl_project/note.dart';
// import 'package:wdl_project/database_helper.dart';
// import 'package:sqflite/sqflite.dart';

class Screen6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen6a();
  }
}

class Screen6a extends State<Screen6> {
  int vcs = 0;
  int vms = 0;
  int vcms = 0;
  int vts = 0;
  int vpts = 0;
  int vcpts = 0;
  int vchs = 0;
  int vchms = 0;
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
                    width: 200,
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
                      child: Text('Sandwich',
                          style: TextStyle(color: Colors.white, fontSize: 40)),
                    )),
              ]),
              Container(height: 20),
              Container(
                  width: 1300,
                  height: 380,
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
                        child: Text('Veg Cheese Sandwich',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 412),
                      Align(
                        alignment: Alignment.center,
                        child: Text('70/-',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 421),
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vcs > 0) {
                                    vcs--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vcs++;
                                });
                              })),
                      Container(width: 15),
                      Text("$vcs",
                          style: TextStyle(color: Colors.black, fontSize: 30))
                    ])),
                    Container(height: 5),
                    Container(
                        child: Row(children: [
                      Container(width: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Mayo Sandwich',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 435),
                      Align(
                        alignment: Alignment.center,
                        child: Text('70/-',
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vms > 0) {
                                    vms--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vms++;
                                });
                              })),
                      Container(width: 15),
                      Text("$vms",
                          style: TextStyle(color: Colors.black, fontSize: 30))
                    ])),
                    Container(height: 5),
                    Container(
                        child: Row(children: [
                      Container(width: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Cheese Mayo Sandwich',
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vcms > 0) {
                                    vcms--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vcms++;
                                });
                              })),
                      Container(width: 16),
                      Text("$vcms",
                          style: TextStyle(color: Colors.black, fontSize: 30))
                    ])),
                    Container(height: 5),
                    Container(
                        child: Row(children: [
                      Container(width: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Tandoori Sandwich',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 396),
                      Align(
                        alignment: Alignment.center,
                        child: Text('80/-',
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vts > 0) {
                                    vts--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vts++;
                                });
                              })),
                      Container(width: 15),
                      Text("$vts",
                          style: TextStyle(color: Colors.black, fontSize: 30))
                    ])),
                    Container(height: 5),
                    Container(
                        child: Row(children: [
                      Container(width: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Paneer Tikka Sandwich',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 326),
                      Align(
                        alignment: Alignment.center,
                        child: Text('120/-',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 423),
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vpts > 0) {
                                    vpts--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vpts++;
                                });
                              })),
                      Container(width: 15),
                      Text("$vpts",
                          style: TextStyle(color: Colors.black, fontSize: 30))
                    ])),
                    Container(height: 5),
                    Container(
                        child: Row(children: [
                      Container(width: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Cheese Paneer Tikka Sandwich',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 230),
                      Align(
                        alignment: Alignment.center,
                        child: Text('125/-',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 425),
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vcpts > 0) {
                                    vcpts--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vcpts++;
                                });
                              })),
                      Container(width: 15),
                      Text("$vcpts",
                          style: TextStyle(color: Colors.black, fontSize: 30))
                    ])),
                    Container(height: 5),
                    Container(
                        child: Row(children: [
                      Container(width: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Chocolate Sandwich',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 363),
                      Align(
                        alignment: Alignment.center,
                        child: Text('130/-',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 427),
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vchs > 0) {
                                    vchs--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vchs++;
                                });
                              })),
                      Container(width: 15),
                      Text("$vchs",
                          style: TextStyle(color: Colors.black, fontSize: 30)),
                    ])),
                    Container(height: 5),
                    Container(
                        child: Row(children: [
                      Container(width: 10),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Chilli Milly Sandwich',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 355),
                      Align(
                        alignment: Alignment.center,
                        child: Text('140/-',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                      Container(width: 427),
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (vchms > 0) {
                                    vchms--;
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 30)),
                              ),
                              onPressed: () {
                                setState(() {
                                  vchms++;
                                });
                              })),
                      Container(width: 15),
                      Text("$vchms",
                          style: TextStyle(color: Colors.black, fontSize: 30)),
                    ]))
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
                          style:
                              TextStyle(fontSize: 40.00, color: Colors.white),
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
                          style:
                              TextStyle(fontSize: 40.00, color: Colors.white),
                        ),
                        onPressed: () {
                          setState(() {
                            String user = "sarvesh";
                            int age = 20;
                            Navigator.push(context,
                                new MaterialPageRoute(builder: (context) {
                              return Screen9(user, age);
                            }));
                          });
                        }),
                  ),
                ],
              )
            ]))));
  }
}
