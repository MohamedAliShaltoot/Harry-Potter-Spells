

class SpellModel {
  //String? id;
  String name;
  String description;

  SpellModel({required this.name,required this.description});

  factory SpellModel.fromJson(json) {
   return SpellModel(
    name : json[21]['name'],
    description : json[21]['description']
    );
    
  }

  


}