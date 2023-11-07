import 'dart:async';

import 'package:flutter/material.dart';

class SplasgScreen extends StatefulWidget {
  const SplasgScreen({super.key});

  @override
  State<SplasgScreen> createState() => _SplasgScreenState();
}

class _SplasgScreenState extends State<SplasgScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('home_page');
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 20,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/Images/splash_screen.gif'),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SizedBox(),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "Marks Sheet Maker",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
