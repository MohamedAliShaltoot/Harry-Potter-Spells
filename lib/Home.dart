
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:harry_potter_spells/ApiServices/api.dart';
import 'package:harry_potter_spells/ApiServices/spell_model.dart';



class HomePage extends StatefulWidget {
   const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SpellModel? spellModel;

  getData() async{
  spellModel= await ApiProvider().getSpell();
  }
  @override
    void initState() {
   getData();
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
        alignment: AlignmentDirectional.center,
      width:200,
      height: 300,
      color: Colors.amber,
      child: Text("${spellModel?.name}")
      // Text("${spellModel!.name}"),

    ),

    Container(
      alignment: AlignmentDirectional.center,
      width:200,
      height: 200,
      color: const Color.fromARGB(255, 48, 255, 7),
      child: Text("${spellModel?.description}"),
      //Text(spellModel?.description ?? "gggg"),

    ),
    
    
    ]
  );
     },),
    );
  }
}
