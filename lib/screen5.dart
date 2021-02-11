import 'package:flutter/material.dart';
import 'screen9.dart';
// import 'package:wdl_project/note.dart';
// import 'package:wdl_project/database_helper.dart';
// import 'package:sqflite/sqflite.dart';

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
  var color = Colors.black;
  var color1 = Colors.blueGrey[50];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60.00,
          backgroundColor: Colors.blueGrey[200],
          title: Text(
            '  FAST FOOD FUSION',
            style: TextStyle(
                fontSize: 25.00,
                color: Colors.white,
                fontFamily: 'YuseiMagic',
                fontWeight: FontWeight.w100),
          ),
        ),
        body: Container(
          width: 1500,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/back.JPG'),
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
                      height: MediaQuery.of(context).size.height * 0.12,
                      width: MediaQuery.of(context).size.width * 0.94,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.00),
                        border: Border.all(width: 2, color: color),
                        color: color1,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text('Pasta',
                            style: TextStyle(
                              color: color,
                              fontSize: 45,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100,
                            )),
                      )),
                ]),
                Container(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                    width: MediaQuery.of(context).size.width * 0.94,
                    height: MediaQuery.of(context).size.height * 0.81,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.00),
                      border: Border.all(width: 2, color: color),
                      color: color1,
                    ),
                    child: Column(children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.013),
                      Container(
                          child: Row(children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Red Sauce',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.17),
                        Text('110/-',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.07),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.145,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.00),
                              border: Border.all(width: 2, color: color),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: color1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.00),
                                  ),
                                ),
                                child: Text('+',
                                    style:
                                        TextStyle(color: color, fontSize: 25)),
                                onPressed: () {
                                  setState(() {
                                    // if (clf == null) {
                                    //   clf = 0;
                                    // }
                                    //clf++;
                                    String name = "Red Sauce Pasta";
                                    popUp(context, name);
                                  });
                                })),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                      ])),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('Pasta',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                          child: Row(children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('White Sauce',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.12),
                        Text('110/-',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.07),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.145,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.00),
                              border: Border.all(width: 2, color: color),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: color1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.00),
                                  ),
                                ),
                                child: Text('+',
                                    style:
                                        TextStyle(color: color, fontSize: 25)),
                                onPressed: () {
                                  setState(() {
                                    //chf++;
                                    String name = "White Sauce Pasta";
                                    popUp(context, name);
                                  });
                                })),
                      ])),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('Pasta',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                          child: Row(children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Triple Cheese',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.06),
                        Text('130/-',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.07),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.145,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.00),
                              border: Border.all(width: 2, color: color),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: color1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.00),
                                  ),
                                ),
                                child: Text('+',
                                    style:
                                        TextStyle(color: color, fontSize: 25)),
                                onPressed: () {
                                  setState(() {
                                    //ccf++;
                                    String name = "Triple Cheese Pasta";
                                    popUp(context, name);
                                  });
                                })),
                      ])),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('Pasta',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                          child: Row(children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Creamy',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.245),
                        Text('140/-',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.07),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.145,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.00),
                              border: Border.all(width: 2, color: color),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: color1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.00),
                                  ),
                                ),
                                child: Text('+',
                                    style:
                                        TextStyle(color: color, fontSize: 25)),
                                onPressed: () {
                                  setState(() {
                                    // mcf++;
                                    String name = "Creamy Mushroom Pasta";
                                    popUp(context, name);
                                  });
                                })),
                      ])),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('Mushroom',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('Pasta',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                          child: Row(children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Americano',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.16),
                        Text('150/-',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.07),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.145,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.00),
                              border: Border.all(width: 2, color: color),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: color1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.00),
                                  ),
                                ),
                                child: Text('+',
                                    style:
                                        TextStyle(color: color, fontSize: 25)),
                                onPressed: () {
                                  setState(() {
                                    //bcf++;
                                    String name = "Americano White Sauce Pasta";
                                    popUp(context, name);
                                  });
                                })),
                      ])),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('White Sauce',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('Pasta',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                          child: Row(children: [
                        Container(width: MediaQuery.of(context).size.width * 0.03),
                        Text('Mac And',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.22),
                        Text('150/-',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.07),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.145,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.00),
                              border: Border.all(width: 2, color: color),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: color1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.00),
                                  ),
                                ),
                                child: Text('+',
                                    style:
                                        TextStyle(color: color, fontSize: 25)),
                                onPressed: () {
                                  setState(() {
                                    //scf++;
                                    String name = "Mac And Cheese Pasta";
                                    popUp(context, name);
                                  });
                                })),
                      ])),
                      Row(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.03),
                          Text('Cheese Pasta',
                              style: TextStyle(
                                  color: color,
                                  fontSize: 25,
                                  fontFamily: 'YuseiMagic',
                                  fontWeight: FontWeight.w100)),
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
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blueGrey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.00),
                            ),
                          ),
                          child: Text(
                            "CART",
                            style:
                                TextStyle(fontSize: 35.00, color: Colors.white),
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
      backgroundColor: color1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: Text("$name \nAdded To Cart",
          style: TextStyle(
              color: color,
              fontSize: 30,
              fontFamily: 'YuseiMagic',
              fontWeight: FontWeight.w100)),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
