import 'package:clockapp_dailytask/screens/analogpage.dart';
import 'package:clockapp_dailytask/screens/frontpage.dart';
import 'package:clockapp_dailytask/screens/splashscreen.dart';
import 'package:clockapp_dailytask/screens/strappage.dart';
import 'package:clockapp_dailytask/screens/timerpage.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> const Splash_screen(),
        '/front':(context)=>const Frontpage(),
        '/analog':(context)=> const Analogpage(),
        '/strap':(context)=>const Strappage(),
        '/timer':(context)=>const TimerClock(),
        // ('/button'):(context)=> Buttonpage(),
      },
    );
  }
}
