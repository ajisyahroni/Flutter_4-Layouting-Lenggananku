import 'dart:async';

import 'package:Lenggananku_Layout/screens/Login.dart';
import 'package:Lenggananku_Layout/utilities/constant.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/Login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: successColor,
        body: Stack(
          children: [
            Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [startGradient, endGradient]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 90),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 60,
                            child: lengganankuIcon,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                'Lengganan',
                                style: TextStyle(
                                    fontFamily: 'CenturyGothic',
                                    color: Colors.white,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                              Text(
                                'Ku',
                                style: TextStyle(
                                    fontFamily: 'CenturyGothic',
                                    letterSpacing: 1.0,
                                    color: accentColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Hi !!',
                            style: TextStyle(
                                fontFamily: 'SegoeUI',
                                color: Colors.white,
                                fontSize: 20.0),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Yuk bangkitkan ekonomi lokal',
                              style: TextStyle(
                                  fontFamily: 'SegoeUI', color: Colors.white)),
                          Text('bersama kami',
                              style: TextStyle(
                                  fontFamily: 'SegoeUI', color: Colors.white)),
                          SizedBox(
                            height: 50.0,
                          ),
                          Text('NGCteam',
                              style: TextStyle(
                                  fontFamily: 'SegoeUI', color: Colors.white)),
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ));
  }
}
