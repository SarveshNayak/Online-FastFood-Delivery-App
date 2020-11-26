import 'package:flutter/material.dart';
import 'Screen2.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Screen1()));
}

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen1a();
  }
}

//class LogoImage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    AssetImage assetImage = AssetImage('images/pic1.jpg');
//    Image image = Image(image: assetImage);

//    return Container(
//      child: image,
//    );
//  }
//}

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
        //appBar: AppBar(
        //backgroundColor: Colors.grey,
        //title: Text("Sasta Sundar Nashta"),
        //),
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/pic1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: 1500,
        child: Column(
          children: [
            Container(
              height: 60,
            ),
            Container(
              width: 500,
              height: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(width: 2, color: Colors.white),
                color: Colors.transparent,
              ),
              child: Column(
                children: [
                  Container(height: 10),
                  Text(
                    "WELCOME TO ",
                    style: TextStyle(color: Colors.white, fontSize: 30.00),
                  ),
                  Text(
                    "FAST FOOD FUSION",
                    style: TextStyle(color: Colors.white, fontSize: 30.00),
                  ),
                  Container(height: 10),
                  Text(
                    "Enter your Name",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 20.00),
                  ),
                  Container(
                    height: 5,
                  ),
                  Form(
                    key: formKey1,
                    child: Container(
                        width: 450,
                        child: TextFormField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          validator: (String val) {
                            if (val.isEmpty) {
                              return "PLEASE ENTER THE NAME";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              labelText: "Enter The Name",
                              hintText: "for eg Sarvesh,Nikhil,Siddhant etc",
                              focusColor: Colors.white,
                              errorStyle: TextStyle(
                                color: Colors.red[900],
                                fontSize: 20.00,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                  ),
                  Container(height: 20),
                  Text(
                    "Enter your Phone Number",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 20.00),
                  ),
                  Container(
                    height: 5,
                  ),
                  Form(
                    key: formKey2,
                    child: Container(
                      width: 450,
                      child: TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        validator: (String val) {
                          if (val.isEmpty) {
                            return "PLEASE ENTER THE PHONE NUMBER";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: "Enter The Phone Number",
                            hintText: "for eg 7766325146, etc",
                            focusColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.red[900],
                              fontSize: 20.00,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                  ),
                  Container(height: 20),
                  Text(
                    "Enter your Email Id",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 20.00),
                  ),
                  Container(
                    height: 5,
                  ),
                  Form(
                    key: formKey3,
                    child: Container(
                      width: 450,
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (String val) {
                          if (val.isEmpty) {
                            return "PLEASE ENTER THE EMAIL ID";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            labelText: "Enter The Email Id",
                            hintText: "for eg Sarvesh123@gmail.com, etc",
                            focusColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.red[900],
                              fontSize: 20.00,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                      ),
                    ),
                  ),
                  Container(height: 20),
                  Container(
                    padding: EdgeInsets.all(10.00),
                    width: 250.00,
                    height: 80.00,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.00)),
                        color: Colors.green,
                        child: Text(
                          "Click here to continue",
                          style:
                              TextStyle(fontSize: 20.00, color: Colors.white),
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
    ));
  }
}
