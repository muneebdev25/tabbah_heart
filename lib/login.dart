
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Animation/FadeAnimation.dart';
import 'package:myapp/registration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(
      MaterialApp(
        home: LoginPage(),
      )
  );
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                            left: 40,
                            width: 150,
                            height: 200,
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
                            width: 300,
                            height: 100,
                            top: 80,
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
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(1.8,Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(255, 107, 107, 1),
                                    blurRadius: 20.0,
                                    offset: Offset(0,10)
                                )
                              ]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[300]))
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
                                padding: EdgeInsets.all(2.0),
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
                            child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ),
                        )),
                        // SizedBox(
                        //   height: 10,
                        // ),
                        // FadeAnimation(2,Container(
                        //   height: 100,
                        //   // decoration: BoxDecoration(
                        //   //     borderRadius:BorderRadius.circular(10),
                        //   //     gradient: LinearGradient(
                        //   //         colors: [
                        //   //           Color.fromRGBO(188, 21, 21, 1),
                        //   //           Color.fromRGBO(188, 21, 21, 6)
                        //   //         ]
                        //   //     )
                        //   // ),
                        //   child: Row(
                        //     children: [
                        //        Expanded(child: SignInButton(
                        //            buttonType: ButtonType.google,
                        //            padding: 10,
                        //            // shape:CircleBorder(),
                        //            btnText: '',
                        //            onPressed: () {
                        //              print('click');
                        //            }),
                        //            ),
                        //       Expanded(child: SignInButton(
                        //           buttonType: ButtonType.facebook,
                        //           width: 50,
                        //           btnText: '',
                        //           onPressed: () {
                        //             print('click');
                        //           }),
                        //       )
                        //     ],
                        //   ),
                        // )),
                        // SizedBox(height: 10,),
                        FadeAnimation(1.5,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                              Text(
                                "Don't have an account ? ",
                                style: TextStyle(color: Color.fromRGBO(188, 21, 21, 1)),
                              ),
                                TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Registration()),
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
                                            "SignUp",style: TextStyle(color:Color.fromRGBO(188, 21, 21, 1),fontWeight: FontWeight.bold)
                                        )
                                      ],
                                    )
                                ),

                              ],
                            ),
                        ),

                        SizedBox(height: 10,),
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
                            margin: EdgeInsets.only(right: 20,left: 20,top: 15),
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
}

class Palette {
  static const Color iconColor = Color(0xFFB6C7D1);
  static const Color activeColor = Color(0xFF09126C);
  static const Color textColor1 = Color(0XFFA7BCC7);
  static const Color textColor2 = Color(0XFF9BB3C0);
  static const Color facebookColor = Color(0xFF1773EA);
  static const Color googleColor = Color(0xFFDE4B39);
  static const Color backgroundColor = Color(0xFFECF3F9);
}
class SocialIcon extends StatelessWidget{
  final String iconSrc;
  final Function press;
  const SocialIcon({
    Key key,
    this.press,
    this.iconSrc
  }):super(key:key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

  }

}



