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
  var color1 = Colors.black;
  var color = Colors.black45;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //   colors: [Color(0x93a5cf), Color(0xfffe4efe9)],
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  // )
                  image: DecorationImage(
                    image: AssetImage('images/backpic.JPG'),
                    fit: BoxFit.fitHeight,
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
                            height: MediaQuery.of(context).size.height * 0.78,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(width: 2, color: color1),
                              color: Colors.blueGrey[50],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                ),
                                Text(
                                  "WELCOME TO ",
                                  style: TextStyle(
                                      color: color1,
                                      fontSize: 30.00,
                                      fontFamily: 'YuseiMagic',
                                      fontWeight: FontWeight.w100),
                                ),
                                Text(
                                  "FAST FOOD FUSION",
                                  style: TextStyle(
                                      color: color1,
                                      fontSize: 30.00,
                                      fontFamily: 'YuseiMagic',
                                      fontWeight: FontWeight.w100),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Text(
                                  "Enter your Name",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: color1,
                                      fontSize: 20.00,
                                      fontFamily: 'YuseiMagic',
                                      fontWeight: FontWeight.w100),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Form(
                                    key: formKey1,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      child: TextFormField(
                                          controller: nameController,
                                          keyboardType: TextInputType.name,
                                          style: TextStyle(
                                              color: color1,
                                              fontSize: 20,
                                              fontFamily: 'RobotoCondensed',
                                              fontWeight: FontWeight.w100),
                                          validator: (String val) {
                                            if (val.isEmpty) {
                                              return "PLEASE ENTER THE NAME";
                                            }
                                            return null;
                                          },
                                          decoration: InputDecoration(
                                              hintText:
                                                  "for eg Sarvesh,Nikhil,etc",
                                              hintStyle:
                                                  TextStyle(color: color),
                                              focusColor: color1,
                                              errorStyle: TextStyle(
                                                  color: Colors.red[900],
                                                  fontSize: 20.00,
                                                  fontFamily: 'RobotoCondensed',
                                                  fontWeight: FontWeight.w100),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 2, color: color1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 2, color: color1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)))),
                                    )),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Text(
                                  "Enter your Phone Number",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: color1,
                                      fontSize: 20.00,
                                      fontFamily: 'YuseiMagic',
                                      fontWeight: FontWeight.w100),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Form(
                                  key: formKey2,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: TextFormField(
                                      controller: phoneController,
                                      keyboardType: TextInputType.phone,
                                      style: TextStyle(
                                          color: color1,
                                          fontSize: 20,
                                          fontFamily: 'RobotoCondensed',
                                          fontWeight: FontWeight.w100),
                                      validator: (String val) {
                                        if (val.isEmpty) {
                                          return "PLEASE ENTER THE PHONE NUMBER";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          fillColor: color1,
                                          hintText: "for eg 7766325146,etc",
                                          hintStyle: TextStyle(color: color),
                                          focusColor: color1,
                                          errorStyle: TextStyle(
                                              color: Colors.red[900],
                                              fontSize: 20.00,
                                              fontFamily: 'RobotoCondensed',
                                              fontWeight: FontWeight.w100),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2, color: color1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2, color: color1),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                  ),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.02,
                                ),
                                Text(
                                  "Enter your Email Id",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: color1,
                                      fontSize: 20.00,
                                      fontFamily: 'YuseiMagic',
                                      fontWeight: FontWeight.w100),
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.01,
                                ),
                                Form(
                                  key: formKey3,
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: TextFormField(
                                      controller: emailController,
                                      keyboardType: TextInputType.emailAddress,
                                      style: TextStyle(
                                          color: color1,
                                          fontSize: 20,
                                          fontFamily: 'RobotoCondensed',
                                          fontWeight: FontWeight.w100),
                                      validator: (String val) {
                                        if (val.isEmpty) {
                                          return "PLEASE ENTER THE EMAIL ID";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          fillColor: color1,
                                          hintText: "for eg Sam@gmail.com,etc",
                                          hintStyle: TextStyle(
                                              color: color,
                                              fontFamily: 'RobotoCondensed',
                                              fontWeight: FontWeight.w100),
                                          focusColor: color1,
                                          errorStyle: TextStyle(
                                              color: Colors.red[900],
                                              fontSize: 20.00,
                                              fontFamily: 'YuseiMagic',
                                              fontWeight: FontWeight.w100),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2, color: color1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 2, color: color1),
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.025,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10.00),
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.00)),
                                      color: Colors.blueGrey[300],
                                      child: Text(
                                        "Click to continue",
                                        style: TextStyle(
                                            fontSize: 22.00,
                                            fontFamily: 'YuseiMagic',
                                            fontWeight: FontWeight.w100,
                                            color: Colors.white),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          if (formKey1.currentState.validate() &&
                                              formKey2.currentState
                                                  .validate() &&
                                              formKey3.currentState
                                                  .validate()) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Screen2(),
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
                ))));
  }
}
