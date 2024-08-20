import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/global.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        Navigator.of(context).pushReplacementNamed('/front');
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(logo),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
