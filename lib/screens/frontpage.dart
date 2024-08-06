import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/global.dart';
class Frontpage extends StatefulWidget {
  const Frontpage({super.key});

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        setState(() {
          dateTime = DateTime.now();
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:double.infinity,
        width:double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(img2),fit: BoxFit.cover),
        ),
       child: Column(
         children: [
           const Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('${(dateTime.hour%12).toString().padLeft(2,'0')}:${dateTime.minute.toString().padLeft(2,'0')}',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
               SizedBox(width: 10,),
               Text('${dateTime.second.toString().padLeft(2,'0')} : ${r=(dateTime.hour>=12)?'PM':'AM'}',style: TextStyle(fontSize: 20,color: Colors.white,height:0,fontWeight: FontWeight.bold),),
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                   '${days[dateTime.weekday - 1]} ${dateTime.day} ${months[dateTime.month - 1]}',
                   style: const TextStyle(
                       fontSize: 40,
                       fontWeight: FontWeight.w400,
                       color: Colors.white))
             ],
           ),
           Spacer(flex: 4,),
         ],
       ),
      ),
    );
  }
}
var r='0';