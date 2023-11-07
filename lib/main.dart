import 'package:flutter/material.dart';
import 'package:marksheet/Screens/getmarks.dart';
import 'package:marksheet/Screens/getstudentdetail.dart';
import 'package:marksheet/Screens/homepage.dart';
import 'package:marksheet/Screens/pdf.dart';
import 'package:marksheet/Screens/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplasgScreen(),
        'home_page': (context) => HomePage(),
        'get_student_detail': (context) => GetStudentDetail(),
        'get_marks': (context) => GetMarks(),
        'pdf': (context) => PDF(),
      },
    ),
  );
}
