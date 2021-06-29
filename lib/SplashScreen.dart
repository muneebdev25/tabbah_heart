import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/Animation/FadeAnimation.dart';
import 'package:myapp/components/body.dart';
import 'main.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    )
  );
}

class SplashScreen  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SplashScreenState();
  }

}

class SplashScreenState extends State<SplashScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage('assets/images/red_bg.png'),
          fit: BoxFit.cover,
        )
      )
      ,child: Stack(
      children: <Widget>[
        // Positioned(
        //     left: 30,
        //     width: 80,
        //     height: 200,
        //     child: FadeAnimation(1,Container(
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //             image: AssetImage('assets/images/light-1.png'),
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
        // Positioned(
        //     left: 40,
        //     width: 150,
        //     height: 200,
        //     child: FadeAnimation(1,Container(
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //             image: AssetImage('assets/images/tbl.png'),
        //
        //           )
        //       ),
        //     )
        //     )),
        Positioned(
          child: FadeAnimation(1.6,Container(
            margin: EdgeInsets.only(top: 100),
            child: Center(
              // child: CircularProgressIndicator(
              //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              // ),
                child: Image(
                  image: AssetImage('assets/images/logotabba.png'),
                )
            ),
          )),
        )
      ],
    ),

    );
  }


  Future<Timer> loadData() async{
    return new Timer(Duration(seconds: 8),onDoneLoading);
  }

  onDoneLoading() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> SecondScreen()));
  }
}