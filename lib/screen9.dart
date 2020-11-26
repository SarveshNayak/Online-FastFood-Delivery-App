import 'dart:math';

import 'package:flutter/material.dart';
import 'screen10.dart';
import 'package:wdl_project/note.dart';
import 'package:wdl_project/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class Screen9 extends StatefulWidget {
    final String str;
    final Note note
    Screen9(this.note,this.str) : super();
  
  @override
  State<StatefulWidget> createState() {
    return Screen9a();
  }
}

class Screen9a extends State<Screen9> {
  Random billno = new Random(1000);
  int group = 1;
  int count1 = 0;
  
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    if(noteList==null){
      noteList=List<Note>();
      updateListView();
    }
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
              height: 70,
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
                child: Text('Bill Details',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              )),
        ]),
        Container(height: 20),
        Row(
          children: [
            Container(width: 30),
            Container(
              width: 900,
              height: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.00),
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(height: 5),
                  Text(
                    "Fast Food Fusion",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.00,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Bill no.FFF1042",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.00,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.w700),
                  ),
                  getNoteListView(),
                ],
              ),
            ),
            Container(
              width: 10,
            ),
            Container(
              width: 400,
              height: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.00),
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(height: 5),
                  Text(
                    "PAYMENT METHODS",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40.00,
                        fontFamily: 'RobotoCondensed',
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                      child: Column(children: [
                    Row(children: [
                      Container(
                        width: 10,
                      ),
                      Text(
                        "Debit Card",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.00,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700),
                      ),
                      Container(width: 200),
                      Radio(
                          activeColor: Colors.black,
                          value: 1,
                          groupValue: group,
                          onChanged: (val) {
                            setState(() {
                              group = val;
                            });
                          })
                    ]),
                    Row(children: [
                      Container(
                        width: 10,
                      ),
                      Text(
                        "UPI",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.00,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700),
                      ),
                      Container(width: 283),
                      Radio(
                          activeColor: Colors.black,
                          value: 2,
                          groupValue: group,
                          onChanged: (val) {
                            setState(() {
                              group = val;
                            });
                          })
                    ]),
                    Row(children: [
                      Container(
                        width: 10,
                      ),
                      Text(
                        "Cash On Delivery",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.00,
                            fontFamily: 'RobotoCondensed',
                            fontWeight: FontWeight.w700),
                      ),
                      Container(width: 123),
                      Radio(
                          activeColor: Colors.black,
                          value: 3,
                          groupValue: group,
                          onChanged: (val) {
                            setState(() {
                              group = val;
                            });
                          })
                    ]),
                  ])),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 1020,
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
                    "PAY",
                    style: TextStyle(fontSize: 40.00, color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen10(),
                          ));
                    });
                  }),
            ),
          ],
        )
      ])),
    ));
  }

  void updateListView(){

    final Future<Database>dbFuture=databaseHelper.initializeDatabase();
    dbFuture.then((database){

      Future<List<Note>>noteListFuture=databaseHelper.getNoteList();
      noteListFuture.then((noteList){
        setState((){
          this.noteList=noteList;
          this.count=noteList.length;
        });
      });
    });
  }

  ListView getNoteListView() {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.transparent,
          child: Text('Dummy Title'),
        );
      },
    );
  }
}
