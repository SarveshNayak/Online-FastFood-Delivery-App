import 'package:flutter/material.dart';



class Screen10 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen10a();
  }
}

class Screen10a extends State<Screen10> {
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
      child: Container()));}}