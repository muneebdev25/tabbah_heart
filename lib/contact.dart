
import 'package:flutter/material.dart';
import 'package:myapp/Animation/FadeAnimation.dart';
// ignore: unused_import
import 'package:myapp/registration.dart';

void main() {
  runApp(
      MaterialApp(
        home: ContactPage(),
      )
  );
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 340,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: FadeAnimation(1.6,Container(
                            margin: EdgeInsets.only(top: 70),
                            child: Center(
                              child: Text('Login',style:TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(1.8,Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(143, 148, 251, 2),
                                    blurRadius: 20.0,
                                    offset: Offset(0,10)
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[100]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email or Phone Number',
                                      hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(2,Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(143, 148, 251, 1),
                                    Color.fromRGBO(143, 148, 251, 6)
                                  ]
                              )
                          ),
                          child: Center(
                            child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        )),

                      ],
                    ),
                  )
                ],
              ),

            ))
    );
  }
}

