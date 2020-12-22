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
  double gap = 0.07;
  double btgap = 0.03;
  double conwidth = 0.9;
  double conheight = 0.12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/pic1.jpg'),
              fit: BoxFit.cover,
            )),
            child: Container(
                child: Column(children: [
              Container(height: MediaQuery.of(context).size.height * gap),
              Container(
                width: MediaQuery.of(context).size.width * conwidth,
                height: MediaQuery.of(context).size.height * conheight,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.00),
                    border: Border.all(width: 2, color: Colors.white),
                    image: DecorationImage(
                      image: AssetImage('images/fries.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    color: Colors.transparent,
                    child: Text(
                      "Fries",
                      style: TextStyle(fontSize: 45.00, color: Colors.white),
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
                    border: Border.all(width: 2, color: Colors.white),
                    image: DecorationImage(
                      image: AssetImage('images/burger.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    color: Colors.transparent,
                    child: Text(
                      "Burger",
                      style: TextStyle(fontSize: 45.00, color: Colors.white),
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
                    border: Border.all(width: 2, color: Colors.white),
                    image: DecorationImage(
                      image: AssetImage('images/pasta1.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    color: Colors.transparent,
                    child: Text(
                      "Pasta",
                      style: TextStyle(fontSize: 45.00, color: Colors.white),
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
                    border: Border.all(width: 2, color: Colors.white),
                    image: DecorationImage(
                      image: AssetImage('images/sandwich3.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    color: Colors.transparent,
                    child: Text(
                      "Sandwich",
                      style: TextStyle(fontSize: 45.00, color: Colors.white),
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
                    border: Border.all(width: 2, color: Colors.white),
                    image: DecorationImage(
                      image: AssetImage('images/nachos.jpg'),
                      fit: BoxFit.cover,
                    )),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    color: Colors.transparent,
                    child: Text(
                      "Nachos",
                      style: TextStyle(fontSize: 45.00, color: Colors.white),
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
                    border: Border.all(width: 2, color: Colors.white),
                    image: DecorationImage(
                      image: AssetImage('images/frankie.JPG'),
                      fit: BoxFit.cover,
                    )),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.00),
                    ),
                    color: Colors.transparent,
                    child: Text(
                      "Frankies",
                      style: TextStyle(fontSize: 45.00, color: Colors.white),
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
            ]))));
  }
}
