
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
   HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
    void initState() {
   // ApiProvider().getSpell();
      super.initState();
    }
//SpellModel? spellModel;

   //SpellModel spellModel = ApiProvider().getSpell() as SpellModel;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Harry Potter Spells"),
        actions: [
          const Icon(Icons.sticky_note_2),
        ],
      ),
    body: ListView.builder(itemCount:10,itemBuilder: (BuildContext context, int index) { 
  return Column(
    children: [
      Container(
      width:200,
      height: 300,
      color: Colors.amber,
      child:const Text("")
      // Text("${spellModel!.name}"),

    ),

    Container(
      width:200,
      height: 200,
      color: Colors.amber,
      child: const Text(""),
      //Text(spellModel?.description ?? "gggg"),

    ),
    
    
    ]
  );
     },),
    );
  }
}
