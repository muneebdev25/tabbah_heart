
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Animation/FadeAnimation.dart';
import 'package:myapp/login.dart';
import 'package:myapp/main.dart';
import 'package:myapp/login.dart';

void main() {
  runApp(
      MaterialApp(
        home: Registration(),
      )
  );
}

class Registration extends StatelessWidget {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 260,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill,
                        )
                    ),
                    child: Stack(
                      children: <Widget>[
                        // Positioned(
                        //     left: 30,
                        //     width: 300,
                        //     height: 100,
                        //     top: 70,
                        //     child: FadeAnimation(1,Container(
                        //       decoration: BoxDecoration(
                        //           image: DecorationImage(
                        //             image: AssetImage('assets/images/whitelogo.png'),
                        //           )
                        //       ),
                        //     )
                        //     )),
                        // Positioned(
                        //     left: 140,
                        //     width: 80,
                        //     height: 150,
                        //     child: FadeAnimation(1.3,Container(
                        //       decoration: BoxDecoration(
                        //           image: DecorationImage(
                        //             image: AssetImage('assets/images/light-2.png'),
                        //           )
                        //       ),
                        //     )
                        //     )),
                        // Positioned(
                        //     right: 40,
                        //     top: 40,
                        //     width: 80,
                        //     height: 200,
                        //     child: FadeAnimation(1.5,Container(
                        //       decoration: BoxDecoration(
                        //           image: DecorationImage(
                        //             image: AssetImage('assets/images/clock.png'),
                        //           )
                        //       ),
                        //     )
                        //     )),
                        Positioned(
                            left: 30,
                            width: 150,
                            height: 110,
                            top: 30,
                            child: FadeAnimation(1,Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/tbl.png'),

                                  )
                              ),
                            )
                            )),

                        Positioned(
                            left: 60,
                            width: 280,
                            height: 100,
                            top: 65,
                            child: FadeAnimation(1.3,Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/whitelogo.png'),
                                  )
                              ),
                            )
                            )),
                        Positioned(
                          child: FadeAnimation(1.6,Container(
                            margin: EdgeInsets.only(top: 80),
                            child: Center(
                              child: Text('Sign Up',style:TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),

                    child: Column(

                      children: <Widget>[
                        FadeAnimation(1.8,Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(188, 21, 21, 2),
                                    blurRadius: 20.0,
                                    offset: Offset(0,10)
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              // Container(
                              //   padding: EdgeInsets.all(2.0),
                              //   decoration: BoxDecoration(
                              //       border: Border(bottom: BorderSide(color: Colors.grey[300]))
                              //   ),
                              //   child: TextField(
                              //     decoration: InputDecoration(
                              //         border: InputBorder.none,
                              //         hintText: 'Username',
                              //         hintStyle: TextStyle(color: Colors.grey[400])
                              //     ),
                              //   ),
                              // ),

                              Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[300]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email',
                                      hintStyle: TextStyle(color: Colors.grey[400])
                                  ),
                                ),
                              ),
                              // Container(
                              //   padding: EdgeInsets.all(2.0),
                              //   decoration: BoxDecoration(
                              //       border: Border(bottom: BorderSide(color: Colors.grey[300]))
                              //   ),
                              //   child: TextField(
                              //     decoration: InputDecoration(
                              //         border: InputBorder.none,
                              //         hintText: 'Phone',
                              //         hintStyle: TextStyle(color: Colors.grey[400])
                              //     ),
                              //   ),
                              // ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[300]))
                                    ),
                                child: TextField(
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      hintStyle: TextStyle(color: Colors.grey[400]),

                                  ),
                                  ),
                                ),
                              Container(
                                padding: EdgeInsets.all(2.0),

                                child: TextField(
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Confirm Password',
                                    hintStyle: TextStyle(color: Colors.grey[400]),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(2,Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(188, 21, 21, 1),
                                    Color.fromRGBO(188, 21, 21, 6)
                                  ]
                              )
                          ),
                          child: Center(
                            child: Text("Signup",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        )
                        ),
                    // SizedBox(height: 10,),
                    FadeAnimation(1.5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Already have an account ? ",
                            style: TextStyle(color: Color.fromRGBO(188, 21, 21, 1)),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => LoginPage()),
                                );
                              },
                              style: TextButton.styleFrom(
                                  // side: BorderSide(width: 1,color: Color(0xFF1773EA)),
                                  // minimumSize: Size(130,40),
                                  // backgroundColor: Palette.facebookColor,
                                  // shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(20)
                                  // )
                              ),
                              child: Row(
                                children: [
                                  // Icon(
                                  //   FontAwesomeIcons.facebook,
                                  //   // color: Colors.white,
                                  // ),

                                  Text(
                                      "SignIn",style: TextStyle(color:Color.fromRGBO(188, 21, 21, 1),fontWeight: FontWeight.bold)
                                  )
                                ],
                              )
                          ),
                        ],
                      ),
                    ),

                    // SizedBox(height: 10),
                    FadeAnimation(1.6, Container(

                      // margin: const EdgeInsets.symmetric(vertical: size.height * 0.02),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Divider(color: Color.fromRGBO(188, 21, 21, 1),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text("OR" , style: TextStyle(color: Color.fromRGBO(188, 21, 21, 1),fontWeight:FontWeight.w600),),
                          ),
                          Expanded(
                            child: Divider(color: Color.fromRGBO(188, 21, 21, 1),),
                          ),
                        ],

                      ),
                    )
                    ),
                    FadeAnimation(1.6,
                      Container(
                        margin: EdgeInsets.only(right: 5,left: 5,top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TextButton(
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                    side: BorderSide(width: 1,color: Color(0xFF1773EA)),
                                    minimumSize: Size(130,40),
                                    backgroundColor: Palette.facebookColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.facebook,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                        "Facebook",style: TextStyle(color: Colors.white)
                                    )
                                  ],
                                )
                            ),
                            TextButton(
                                onPressed: (){},
                                style: TextButton.styleFrom(
                                    side: BorderSide(width: 1,color: Color(0xFFDE4B39)),
                                    minimumSize: Size(130,40),
                                    backgroundColor: Palette.googleColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.google,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Google",style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                      ],
                    ),
                  )
                ],
              ),

            ))
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  void setState(Null Function() param0) {}

}



