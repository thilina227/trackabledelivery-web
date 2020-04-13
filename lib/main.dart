import 'package:flutter/material.dart';
import 'package:trackmeanything/landingPage/LandingPage.dart';
import 'package:trackmeanything/nav/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Montserrat"
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.centerRight,
            colors: [Color.fromRGBO(225, 225, 225, 1.0), Color.fromRGBO(225, 225, 225, 1.0)]
          )
        ),
        child: Column(
          children: <Widget>[
            NavBar(),
            LandingPage()
          ],
        ),
      ),
    );
  }
}