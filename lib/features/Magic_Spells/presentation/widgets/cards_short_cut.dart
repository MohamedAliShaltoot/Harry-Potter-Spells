 import 'package:flutter/material.dart';

import 'package:harry_potter_spells/core/utils/constants.dart';
import 'package:harry_potter_spells/features/Magic_Spells/presentation/cubit/spell_states.dart';

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
                      colors: [Constants.colorpurple, Constants.colorBlue],
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
                            color: Constants.colorBlack,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
state.spellModel[index].description
                          //spells![index].description
                          
                          ,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Constants.colorBlack,
                          ),
                        ),
                        const SizedBox(height: 10),
                         Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                        
                           onPressed: () { 
                          

                           }, 
                           icon:  const Icon(Icons.star,color: Constants.colorYellow,),
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