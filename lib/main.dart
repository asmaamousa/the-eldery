import 'package:flutter/material.dart';
import 'package:theeee_eldery/views/My_patient.dart';
import 'package:theeee_eldery/views/bigimg.dart';
import 'package:theeee_eldery/views/doctor_homepage.dart';
import 'package:theeee_eldery/views/write_review.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner:false,
    home://Mypatients()
    Doctor_homepage()
    //review(),
    //bigimg()
    );
    }
}