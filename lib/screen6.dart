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
                    child: Text('Sandwich',
                        style: TextStyle(
                          color: color,
                          fontSize: 45,
                        )),
                  )),
            ]),
            Container(height: MediaQuery.of(context).size.height * 0.02),
            Container(
                width: MediaQuery.of(context).size.width * 0.94,
                height: MediaQuery.of(context).size.height * 1.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.00),
                  border: Border.all(width: 2, color: color),
                  color: color1,
                ),
                child: Column(children: [
                  Container(height: MediaQuery.of(context).size.height * 0.013),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                     Text('Veg Cheese',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                   
                    Container(width: MediaQuery.of(context).size.width * 0.15),
                     Text('70/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                // if (clf == null) {
                                //   clf = 0;
                                // }
                                //clf++;
                                String name = "Veg Cheese Sandwich";
                                popUp(context, name);
                              });
                            })),
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Sandwich',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                     Text('Veg Mayo',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.22),
                     Text('70/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                //chf++;
                                String name = "Veg Mayo Sandwich";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Sandwich',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                     Text('Veg Cheese',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.14),
                    Text('80/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                //ccf++;
                                String name = "Veg Cheese Mayo Sandwich";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Mayo Sandwich',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                     Text('Veg Tandoori',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.105),
                    Text('80/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),          
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                //mcf++;
                                String name = "Veg Tandoori Sandwich";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Sandwich',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                     Text('Veg Paneer',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.13),
                    Text('120/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                //bcf++;
                                String name = "Veg Paneer Tikka Sandwich";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Tikka Sandwich',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                     Text('Veg Cheese',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.12),
                     Text('125/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                // scf++;
                                String name =
                                    "Veg Cheese Paneer Tikka Sandwich";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Paneer Tikka',
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
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Sandwich',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('Veg',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.37),
                     Text('130/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                //ppf++;
                                String name = "Veg Chocolate Sandwich";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Chocolate',
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
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Sandwich',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    ],
                  ),
                  Container(height: MediaQuery.of(context).size.height * 0.02),
                  Container(
                      child: Row(children: [
                    Container(width: MediaQuery.of(context).size.width * 0.03),
                    Text('Veg Chilli',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.185),
                     Text('140/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    Container(width: MediaQuery.of(context).size.width * 0.07),
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
                                style: TextStyle(color: color, fontSize: 25)),
                            onPressed: () {
                              setState(() {
                                //ppf++;
                                String name = "Veg Chilli Milly Sandwich";
                                popUp(context, name);
                              });
                            })),
                  ])),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      Text('Milly Sandwich',
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
                        style: TextStyle(
                            fontSize: 35.00,
                            color: Colors.white,
                            fontFamily: 'YuseiMagic',
                            fontWeight: FontWeight.w100),
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
