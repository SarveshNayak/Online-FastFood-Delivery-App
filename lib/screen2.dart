import 'package:flutter/material.dart';
import 'screen3.dart';
import 'screen4.dart';
import 'screen5.dart';
import 'screen6.dart';
import 'screen7.dart';
import 'screen8.dart';

class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen2a();
  }
}

class Screen2a extends State<Screen2> {
  double gap = 0.03;
  double btgap = 0.03;
  double conwidth = 0.9;
  double conheight = 0.12;
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
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/back.JPG'),
              fit: BoxFit.cover,
            )),
            child: ListView(children: [
              Container(
                  child: Column(children: [
                Container(height: MediaQuery.of(context).size.height * gap),
                Container(
                  width: MediaQuery.of(context).size.width * conwidth,
                  height: MediaQuery.of(context).size.height * conheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: color),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.00),
                        ),
                      ),
                      child: Text(
                        "Fries",
                        style: TextStyle(
                            fontSize: 45.00,
                            color: color,
                            fontFamily: 'YuseiMagic',
                            fontWeight: FontWeight.w100),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen3(),
                              ));
                        });
                      }),
                ),
                Container(height: MediaQuery.of(context).size.height * btgap),
                Container(
                  width: MediaQuery.of(context).size.width * conwidth,
                  height: MediaQuery.of(context).size.height * conheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: color),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.00),
                        ),
                      ),
                      child: Text(
                        "Burger",
                        style: TextStyle(
                            fontSize: 45.00,
                            color: color,
                            fontFamily: 'YuseiMagic',
                            fontWeight: FontWeight.w100),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen4(),
                              ));
                        });
                      }),
                ),
                Container(height: MediaQuery.of(context).size.height * btgap),
                Container(
                  width: MediaQuery.of(context).size.width * conwidth,
                  height: MediaQuery.of(context).size.height * conheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: color),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.00),
                        ),
                      ),
                      child: Text(
                        "Pasta",
                        style: TextStyle(
                            fontSize: 45.00,
                            color: color,
                            fontFamily: 'YuseiMagic',
                            fontWeight: FontWeight.w100),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen5(),
                              ));
                        });
                      }),
                ),
                Container(height: MediaQuery.of(context).size.height * btgap),
                Container(
                  width: MediaQuery.of(context).size.width * conwidth,
                  height: MediaQuery.of(context).size.height * conheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: color),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.00),
                        ),
                      ),
                      child: Text(
                        "Sandwich",
                        style: TextStyle(
                            fontSize: 45.00,
                            color: color,
                            fontFamily: 'YuseiMagic',
                            fontWeight: FontWeight.w100),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen6(),
                              ));
                        });
                      }),
                ),
                Container(height: MediaQuery.of(context).size.height * btgap),
                Container(
                  width: MediaQuery.of(context).size.width * conwidth,
                  height: MediaQuery.of(context).size.height * conheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: color),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.00),
                        ),
                      ),
                      child: Text(
                        "Nachos",
                        style: TextStyle(
                            fontSize: 45.00,
                            color: color,
                            fontFamily: 'YuseiMagic',
                            fontWeight: FontWeight.w100),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen7(),
                              ));
                        });
                      }),
                ),
                Container(height: MediaQuery.of(context).size.height * btgap),
                Container(
                  width: MediaQuery.of(context).size.width * conwidth,
                  height: MediaQuery.of(context).size.height * conheight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: color),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: color1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.00),
                        ),
                      ),
                      child: Text(
                        "Frankies",
                        style: TextStyle(
                            fontSize: 45.00,
                            color: color,
                            fontFamily: 'YuseiMagic',
                            fontWeight: FontWeight.w100),
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen8(),
                              ));
                        });
                      }),
                ),
                Container(height: MediaQuery.of(context).size.height * btgap),
              ]))
            ])));
  }
}
