// import 'package:dio/dio.dart';
// import 'package:harry_potter_spells/ApiServices/spell_model.dart';


// class ApiProvider{



//   Future<SpellModel> getSpell() async{

//     try{
// Response response= await Dio().get("https://hp-api.onrender.com/api/spells");

// print(response.statusCode);
// print(response.data);

//     SpellModel spellModel = SpellModel.fromJson(response.data);
//     print(spellModel);
//   return spellModel;
//     } on DioException catch(e){
//    final String errorMessage = e.response?.data ?? " ps there an error , try later";
//    throw Exception(errorMessage);
// }
//  catch(e){
//   throw Exception(" try later");
//  }

    
//   }
  
// }

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:harry_potter_spells/ApiServices/spell_model.dart';

class ApiProvider {
  Future<List<SpellModel>> getSpells() async {
    try {
      Response response = await Dio().get("https://hp-api.onrender.com/api/spells");

      if (kDebugMode) {
        print(response.statusCode);
      }
      if (kDebugMode) {
        print(response.data);
      }

      // Map the response data to a list of SpellModel
      List<SpellModel> spells =[];
      for(var spellJson in response.data ){
        spells.add(SpellModel.fromJson(spellJson));
      }
      
      // List<SpellModel> spells = (response.data as List)
      //     .map((spellJson) => SpellModel.fromJson(spellJson))
      //     .toList();

      return spells;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data ?? "There was an error, try later";
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception("Try later");
    }
  }
}