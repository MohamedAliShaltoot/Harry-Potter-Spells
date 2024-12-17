import 'package:dio/dio.dart';
import 'package:harry_potter_spells/ApiServices/spell_model.dart';


class ApiProvider{



  Future<SpellModel> getSpell() async{

    try{
Response response= await Dio().get("https://hp-api.onrender.com/api/spells");

print(response.statusCode);
print(response.data);

    SpellModel spellModel = SpellModel.fromJson(response.data);
    print(spellModel);
  return spellModel;
    } on DioException catch(e){
   final String errorMessage = e.response?.data ?? " ps there an error , try later";
   throw Exception(errorMessage);
}
 catch(e){
  throw Exception(" try later");
 }

    
  }
  
}