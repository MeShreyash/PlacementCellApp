import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tnp/screens/login/login.dart';
import 'package:tnp/widgets/themes.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: new Color(0xFFFDD738),
                gradient: LinearGradient(
                    colors: [(new Color(0xFFF2C202)), new Color(0xFFFDD738)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/logo.png"),
            ),
          )
        ],
      ),
    );
  }
}
