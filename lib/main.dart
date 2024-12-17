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
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//https://hp-api.onrender.com/api/spells