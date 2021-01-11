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
          child: ListView(
        children: [
          Column(children: [
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
                    child: Text('Nachos',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        )),
                  )),
            ]),
            Container(height: MediaQuery.of(context).size.height * 0.02),
            Container(
                width: MediaQuery.of(context).size.width * 0.94,
                height: MediaQuery.of(context).size.height * 0.64,
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
                      child: Text('Classic',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.23),
                    Align(
                      alignment: Alignment.center,
                      child: Text('120/-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                // clf++;
                                String name = "Classic Mexican Nachos";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Mexican',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Nachos',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Align(
                      alignment: Alignment.center,
                      child: Text('Triple',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.28),
                    Align(
                      alignment: Alignment.center,
                      child: Text('140/-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                // chf++;
                                String name = "Triple Cheese Nachos";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Cheese Nachos',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Align(
                      alignment: Alignment.center,
                      child: Text('Shredded',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.16),
                    Align(
                      alignment: Alignment.center,
                      child: Text('140/-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                // ccf++;
                                String name = "Shredded Paneer Nachos";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Paneer Nachos',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
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
                    Container(width: MediaQuery.of(context).size.width * 0.19),
                    Align(
                      alignment: Alignment.center,
                      child: Text('150/-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                // mcf++;
                                String name = "Peri Peri Spicy Nachos";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Spicy Nachos',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'RobotoCondensed',
                                fontWeight: FontWeight.w700)),
                      ),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Align(
                      alignment: Alignment.center,
                      child: Text('Cheese',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.23),
                    Align(
                      alignment: Alignment.center,
                      child: Text('150/-',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'RobotoCondensed',
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                // bcf++;
                                String name = "Cheese Loaded Nachos";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Loaded Nachos',
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
}
