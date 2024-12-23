import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:harry_potter_spells/ApiServices/spell_model.dart';
import 'package:harry_potter_spells/bloc/spell_bloc.dart';
import 'package:harry_potter_spells/bloc/spell_states.dart';


// ignore: must_be_immutable
class NewHomePage extends StatelessWidget {
  bool isClicked=false;
  List<SpellModel>? spells;

  NewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 54, 95),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Magical Spells"),
        actions: const [
          Icon(Icons.sticky_note_2),
        ],
      ),
      body: BlocBuilder<SpellCubit, SpellStates>(builder: (context, state) {
        if(state is SpellLoading){
          return const Center(child: CircularProgressIndicator());
        } else if(state is SpellLoaded){
          return SpellUiDisplay(state);
        } else if(state is SpellError){
          return Center(child: Text(state.message));
        }
        return Center(
          child: ElevatedButton(onPressed: () async{
            await context.read<SpellCubit>().getSpell();
          
          }, child: const Text(" Click Me"),),
        );
        
      }
      ),
   
    );
  }






















  // ignore: non_constant_identifier_names
  ListView SpellUiDisplay(SpellLoaded state) {
    return ListView.builder(
          itemCount: state.spellModel.length,
           itemBuilder: (BuildContext context, int index) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.purpleAccent, Colors.blueAccent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(

state.spellModel[index].name
                         // spells![index].name
                          
                          
                          ,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 16, 14, 14),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
state.spellModel[index].description
                          //spells![index].description
                          
                          ,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(179, 12, 11, 11),
                          ),
                        ),
                        const SizedBox(height: 10),
                         Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                        
                           onPressed: () { 
                            // setState(() {
                              
                            // }); 
                            // if(isClicked) {isClicked=false;}
                            // else {isClicked=true;}

                           }, 
                           icon:  Icon(Icons.star,color:isClicked?const Color.fromARGB(255, 18, 18, 13): Colors.yellowAccent ,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            
        );
  }
}

