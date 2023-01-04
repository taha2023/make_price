import 'dart:async';
import 'package:flutter/material.dart';
import 'package:make_price/home.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(          decoration: BoxDecoration(
            color: Color(0xFFe6e9ed),
            image: DecorationImage(
              image: AssetImage('assets/images/flutter.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}