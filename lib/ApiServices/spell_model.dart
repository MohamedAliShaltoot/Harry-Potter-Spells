

// class SpellModel {

//   //String? id;
//   String name;
//   String description;

//   SpellModel({required this.name,required this.description});

//   factory SpellModel.fromJson(json) {

// //     List<SpellModel> models =[];
// // for(int i=0;i<25;i++){
// //     models.add (SpellModel(
// //      name : json[i]['name'],
// //     description : json[i]['description']
// //     )) ;
      
// //     }




//     return  SpellModel(name: json[10]['name'], description: json[10]['description']);


    
    
//   }

  


// }

class SpellModel {
  String name;
  String description;

  SpellModel({required this.name, required this.description});

  factory SpellModel.fromJson(Map<String, dynamic> json) {
    return SpellModel(
      name: json['name'],
      description: json['description'],
    );
  }
}