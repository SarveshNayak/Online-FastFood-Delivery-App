import 'package:flutter/material.dart';
import 'screen9.dart';
// import 'package:wdl_project/note.dart';
// import 'package:wdl_project/database_helper.dart';
// import 'package:sqflite/sqflite.dart';

class Screen8 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen8a();
  }
}

class Screen8a extends State<Screen8> {
  int vf = 0;
  int vcf = 0;
  int vpf = 0;
  int vmf = 0;
  int vcpf = 0;
  int vpcf = 0;
  int vmcf = 0;
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
              child: ListView(children: [
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
                      child: Text('Frankie',
                          style: TextStyle(
                              color: color,
                              fontSize: 45,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                    )),
              ]),
              Container(height: MediaQuery.of(context).size.height * 0.02),
              Container(
                  width: MediaQuery.of(context).size.width * 0.94,
                  height: MediaQuery.of(context).size.height * 0.84,
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
                      Text('Veg Frankie',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.165),
                      Text('30/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.05),
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
                                  // clf++;
                                  String name = "Veg Frankie";
                                  popUp(context, name);
                                });
                              })),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                    ])),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                        child: Row(children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Veg Cheese',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.165),
                      Text('45/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.05),
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
                                  String name = "Veg Cheese Frankie";
                                  popUp(context, name);
                                });
                              })),
                    ])),
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Frankie',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                        child: Row(children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Veg Paneer',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.175),
                      Text('45/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.05),
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
                                  String name = "Veg Paneer Frankie";
                                  popUp(context, name);
                                });
                              })),
                    ])),
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Frankie',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                        child: Row(children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Veg',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.415),
                      Text('50/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.05),
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
                                  String name = "Veg Manchurian Frankie";
                                  popUp(context, name);
                                });
                              })),
                    ])),
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Manchurian',
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
                        Text('Frankie',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                        child: Row(children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Veg Chilli',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.225),
                      Text('60/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.05),
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
                                  String name = "Veg Chilli Paneer Frankie";
                                  popUp(context, name);
                                });
                              })),
                    ])),
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Paneer Frankie',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                        child: Row(children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Text('Veg Paneer',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.175),
                      Align(
                        alignment: Alignment.center,
                        child: Text('70/-',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.05),
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
                                  //scf++;
                                  String name = "Veg Paneer Cheese Frankie";
                                  popUp(context, name);
                                });
                              })),
                    ])),
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Cheese Frankie',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02),
                    Container(
                        child: Row(children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.03),
                      Align(
                        alignment: Alignment.center,
                        child: Text('Veg Mayo',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.225),
                      Text('70/-',
                          style: TextStyle(
                              color: color,
                              fontSize: 25,
                              fontFamily: 'YuseiMagic',
                              fontWeight: FontWeight.w100)),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.05),
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
                                  String name = "Veg Mayo Cheese Frankie";
                                  popUp(context, name);
                                });
                              })),
                    ])),
                    Row(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.03),
                        Text('Cheese Frankie',
                            style: TextStyle(
                                color: color,
                                fontSize: 25,
                                fontFamily: 'YuseiMagic',
                                fontWeight: FontWeight.w100)),
                      ],
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.02),
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
          ])),
        ));
  }

  void popUp(BuildContext context, String name) {
    var alertDialog = AlertDialog(
      backgroundColor: color1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: Text("$name \nAdded To Cart",
          style: TextStyle(
              color: Colors.white,
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
