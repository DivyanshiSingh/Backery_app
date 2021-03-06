import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:bakery_app/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final log = Logger();
  final userName = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: 680,
          width: 380,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("Images/login.jpg"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Opacity(
                opacity: 0.9,
                child: Container(
                    height: 150,
                    width: 400,
                    decoration: new BoxDecoration(
                      color: Colors.grey[900],
                      // const Color(1F1D14),
                      // 0xff7c94b6
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        // Positioned(
                        //   top: 90,
                        //   right: 80,
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 30),
                              Text(
                                'Black Velvet',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: Colors.white,
                                ),
                              ),
                              // ),
                              // Positioned(
                              //   top: 130,
                              //   right: 110,
                              Text(
                                'Backery',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 50),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 40,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "username",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  height: 40,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "password",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: SizedBox(
                                  width: 250,
                                  height: 40,
                                  child: FlatButton(
                                    padding: EdgeInsets.all(8),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(10)),
                                    // width:250,
                                    color: Colors.pink,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      log.v('This is verbose');
                                      log.d('This ia a debug message');
                                      log.i(
                                          'This is info, should be used for public calls');
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 40),

                              FlatButton(
                                padding: EdgeInsets.all(8),
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10)),
                                // width:250,
                                color: Colors.transparent,

                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "New Account",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                              FlatButton(
                                padding: EdgeInsets.all(8),
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10)),
                                // width:250,
                                color: Colors.transparent,

                                onPressed: () {},
                                child: Text(
                                  "Forgot Password ?",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))),
          ),
        ),
      ),
    );
  }
}
