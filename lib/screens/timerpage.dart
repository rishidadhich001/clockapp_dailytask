
import 'dart:async';
import 'package:flutter/material.dart';

import '../utils/global.dart';

class TimerClock extends StatefulWidget {
  const TimerClock({super.key});

  @override
  State<TimerClock> createState() => _TimerClockState();
}

class _TimerClockState extends State<TimerClock> {
  void timerAppLogic() {
    Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        setState(() {
          if (timersecond != 0 || timerminute != 0 || timerhour != 0) {
            if (timerstop) {
              timersecond--;
              if (timersecond < 0) {
                timerminute--;
                timersecond = 59;
                if (timerminute < 0) {
                  timerhour--;
                  timerminute = 59;
                  timersecond = 59;
                }
              }
            }
          }
        });
      },
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timerAppLogic();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(ph),
          ),
        ),
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "${timerhour.toString().padLeft(2, '0')}:${timerminute.toString().padLeft(2, '0')}:${timersecond.toString().padLeft(2, '0')}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  height: -5),),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: fthour,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white,fontSize: 18),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Hour',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: ftminute,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white,fontSize: 18),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Minute',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: ftsecond,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white,fontSize: 18),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Second',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          hintText: 'Enter',
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white54),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.white),),
                        onPressed: (){
                          setState(() {
                            timerstop = true;
                            timersecond=int.parse(ftsecond.text);
                            timerminute=int.parse(ftminute.text);
                            timerhour=int.parse(fthour.text);
                          });
                        }, child: const Text(
                        'Start', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      ),),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.white),),
                        onPressed: (){
                          timerstop = false;
                        }, child: const Text(
                        'Pause',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      ),),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.white),),
                        onPressed: (){
                          timersecond=0;
                          timerminute=0;
                          timerhour=0;
                          timerstop = false;
                        }, child: const Text(
                        'Reset',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
