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
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(gif()),
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '${dateTime.second.toString().padLeft(2, '0')} : ${r = (dateTime.hour >= 12) ? 'PM' : 'AM'}',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 0,
                      fontWeight: FontWeight.bold),
                ),
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
            const Spacer(
              flex: 4,
            ),
            OutlinedButton(onPressed: () {
              Navigator.of(context).pushNamed('/analog');
            }, child: const Text('Next',style: TextStyle(color: Colors.white),)),
            const SizedBox(height: 10,),
          ],
        ),

      ),
    );
  }
}

var r = '0';
