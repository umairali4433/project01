
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/string_constants.dart';
import 'homscreen/homescreen.dart';

void main() {
  // SPManager.getThemeDark();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SPManager.getThemeDark()
    return getView(context);
    // return
    //   ScopedModel(
    //   model: ThemeModel(),
    //   child: getView(),
    // );
  }
  Widget getView(BuildContext context) {
    return

      MaterialApp(
        title: StringConst.APP_NAME,
        debugShowCheckedModeBanner: false,

        // ),
        home: SplashScreen(),

      );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => Homescreen())));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/splash.png'),
          )
      ),

    );
  }
}











