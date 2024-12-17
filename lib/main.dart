import 'package:flutter/material.dart';
import 'package:harry_potter_spells/Home.dart';



void main() async {
 // print("before");
 //await ApiProvider().getSpell();
// print("after");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter App!!',
      
      
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//https://hp-api.onrender.com/api/spells