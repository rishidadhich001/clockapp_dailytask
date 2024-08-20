import 'dart:async';

import 'package:clockapp_dailytask/utils/global.dart';
import 'package:flutter/material.dart';
class Strappage extends StatefulWidget {
  const Strappage({super.key});

  @override
  State<Strappage> createState() => _StrappageState();
}

class _StrappageState extends State<Strappage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer){
      setState(() {
        if(stop){
          second++;
        }
        if(second>59)
          {
            minute++;
            second=0;
          }
        if(minute>59)
          {
            hour++;
            minute=0;
            second=0;
          }
      });
    });
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
            image: AssetImage(strap),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                // color:Color(0xffD6D6F7),
                color: Colors.white24,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 25,
                    spreadRadius: 5,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                '${hour.toString().padLeft(2, '0')} : ${minute.toString().padLeft(2, '0')} : ${second.toString().padLeft(2, '0')}',
                style: const TextStyle(
                    color: Colors.white, fontSize: 35, height: 1),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      stop = true;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24, width: 2),
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      stop = false;
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white24, width: 2),
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.pause,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: GestureDetector(
                      onTap: () {
                        second = 0;
                        minute = 0;
                        hour = 0;
                        stop = false;
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white24, width: 2),
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.restart_alt,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
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
                  Navigator.of(context).pushNamed('/timer');
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
