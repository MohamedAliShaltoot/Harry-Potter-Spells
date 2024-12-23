import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter_spells/ApiServices/api.dart';
//import 'package:harry_potter_spells/Home.dart';
import 'package:harry_potter_spells/bloc/spell_bloc.dart';
import 'package:harry_potter_spells/new_home_bloc.dart';

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
    return BlocProvider(
      create: (context) => SpellCubit(ApiProvider()),
      child: MaterialApp(
        title: 'Flutter App!!',
        home: NewHomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

//https://hp-api.onrender.com/api/spells