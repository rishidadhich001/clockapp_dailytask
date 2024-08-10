import 'dart:async';
import 'dart:math';

import 'package:clockapp_dailytask/utils/global.dart';
import 'package:flutter/material.dart';

class Analogpage extends StatefulWidget {
  const Analogpage({super.key});

  @override
  State<Analogpage> createState() => _AnalogpageState();
}

class _AnalogpageState extends State<Analogpage> {
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
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(gif()),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 25,
                    spreadRadius: 5,
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
              ),
            ),
            Transform.rotate(
              angle: (dateTime.second * 6) * pi / 180,
              child: const VerticalDivider(
                indent: 340,
                endIndent: 405,
                color: Colors.red,
                thickness: 2,
              ),
            ),
            Transform.rotate(
              angle: (dateTime.minute * 6) * pi / 180,
              child: const VerticalDivider(
                indent: 350,
                endIndent: 405,
                color: Colors.white,
                thickness: 3,
              ),
            ),
            Transform.rotate(
              angle: (dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180,
              child: const VerticalDivider(
                indent: 370,
                endIndent: 405,
                color: Colors.white,
                thickness: 5,
              ),
            ),
            ...List.generate(
              60,
              (index) => Transform.rotate(
                angle: (index * 30) * pi / 60,
                child: const VerticalDivider(
                  thickness: 5,
                  color: Colors.white,
                  endIndent: 530,
                  indent: 310,
                ),
              ),
            ),
            const CircleAvatar(
              radius: 5,
              backgroundColor: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${(dateTime.hour > 12) ? (dateTime.hour % 12).toString().padLeft(2, '0') : (dateTime.hour).toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
                  style: const TextStyle(
                    fontSize: 55,
                    height: -7,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${(dateTime.hour <= 12) ? ('AM') : ('PM')}',
                  style: const TextStyle(
                      color: Colors.white, fontSize: 15, height: -24),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Text(
                '${days[dateTime.weekday - 1]} ${dateTime.day}:${months[dateTime.month - 1]}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    height: -35),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 140),
            child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/strap');
                },
                child: const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
