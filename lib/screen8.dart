import 'package:flutter/material.dart';
import 'screen9.dart';
import 'package:wdl_project/note.dart';
import 'package:wdl_project/database_helper.dart';
import 'package:sqflite/sqflite.dart';

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
                child: Text('Frankie',
                    style: TextStyle(color: Colors.white, fontSize: 50)),
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
                  child: Text('Veg Frankie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 493),
                Align(
                  alignment: Alignment.center,
                  child: Text('30/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 457),
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
                            if (vf > 0) {
                              vf--;
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
                            vf++;
                          });
                        })),
                Container(width: 15),
                Text("$vf", style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 5),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Cheese Frankie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 395),
                Align(
                  alignment: Alignment.center,
                  child: Text('45/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 460),
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
                            if (vcf > 0) {
                              vcf--;
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
                            vcf++;
                          });
                        })),
                Container(width: 15),
                Text("$vcf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 5),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Paneer Frankie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 400),
                Align(
                  alignment: Alignment.center,
                  child: Text('45/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 460),
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
                            if (vpf > 0) {
                              vpf--;
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
                            vpf++;
                          });
                        })),
                Container(width: 16),
                Text("$vpf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 5),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Manchurian Frankie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 343),
                Align(
                  alignment: Alignment.center,
                  child: Text('50/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 460),
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
                            if (vmf > 0) {
                              vmf--;
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
                            vmf++;
                          });
                        })),
                Container(width: 15),
                Text("$vmf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 5),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Chilli Paneer Frankie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 330),
                Align(
                  alignment: Alignment.center,
                  child: Text('60/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 461),
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
                            if (vcpf > 0) {
                              vcpf--;
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
                            vcpf++;
                          });
                        })),
                Container(width: 15),
                Text("$vcpf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 5),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Paneer Cheese Frankie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 302),
                Align(
                  alignment: Alignment.center,
                  child: Text('70/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 462),
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
                            if (vpcf > 0) {
                              vpcf--;
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
                            vpcf++;
                          });
                        })),
                Container(width: 15),
                Text("$vpcf",
                    style: TextStyle(color: Colors.black, fontSize: 30))
              ])),
              Container(height: 5),
              Container(
                  child: Row(children: [
                Container(width: 10),
                Align(
                  alignment: Alignment.center,
                  child: Text('Veg Mayo Cheese Frankie',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 320),
                Align(
                  alignment: Alignment.center,
                  child: Text('70/-',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'RobotoCondensed',
                          fontWeight: FontWeight.w700)),
                ),
                Container(width: 462),
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
                            if (vmcf > 0) {
                              vmcf--;
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
                            vmcf++;
                          });
                        })),
                Container(width: 15),
                Text("$vmcf",
                    style: TextStyle(color: Colors.black, fontSize: 30)),
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
