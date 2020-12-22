import 'package:flutter/material.dart';
import 'screen2.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Screen1()));
}

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen1a();
  }
}

class Screen1a extends State<Screen1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  var formKey1 = GlobalKey<FormState>();
  var formKey2 = GlobalKey<FormState>();
  var formKey3 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/pic1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.12,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.89,
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                            ),
                            Text(
                              "WELCOME TO ",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.00),
                            ),
                            Text(
                              "FAST FOOD FUSION",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.00),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text(
                              "Enter your Name",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.00),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Form(
                                key: formKey1,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  child: TextFormField(
                                      controller: nameController,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(color: Colors.white, fontSize: 20),
                                      validator: (String val) {
                                        if (val.isEmpty) {
                                          return "PLEASE ENTER THE NAME";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          hintText:
                                              "for eg Sarvesh,Nikhil, etc",
                                          hintStyle:
                                              TextStyle(color: Colors.white),
                                          focusColor: Colors.white,
                                          errorStyle: TextStyle(
                                            color: Colors.red[900],
                                            fontSize: 20.00,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                )),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              "Enter your Phone Number",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.00),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Form(
                              key: formKey2,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: TextFormField(
                                  controller: phoneController,
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle(color: Colors.white, fontSize: 20),
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      return "PLEASE ENTER THE PHONE NUMBER";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "for eg 7766325146, etc",
                                      hintStyle: TextStyle(color: Colors.white),
                                      focusColor: Colors.white,
                                      errorStyle: TextStyle(
                                        color: Colors.red[900],
                                        fontSize: 20.00,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(
                              "Enter your Email Id",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.00),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Form(
                              key: formKey3,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: TextFormField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      return "PLEASE ENTER THE EMAIL ID";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "for eg Sam@gmail.com, etc",
                                      hintStyle: TextStyle(color: Colors.white),
                                      focusColor: Colors.white,
                                      errorStyle: TextStyle(
                                        color: Colors.red[900],
                                        fontSize: 20.00,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color: Colors.white),
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.00),
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.1,
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.00)),
                                  color: Colors.green,
                                  child: Text(
                                    "Click to continue",
                                    style: TextStyle(
                                        fontSize: 20.00, color: Colors.white),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (formKey1.currentState.validate() &&
                                          formKey2.currentState.validate() &&
                                          formKey3.currentState.validate()) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Screen2(),
                                            ));
                                      }
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
