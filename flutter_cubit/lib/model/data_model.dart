class DataModel{
 String name;
 String img;
 String description;
 String location;
 int price;
 int people;
 int stars;

 DataModel({
  required this.name,
  required this.img,
  required this.description,
  required this.location,
  required this.price,
  required this.people,
  required this.stars,
  });
factory DataModel.fromJson(Map<String,dynamic>json){
  return DataModel(
    name: json["name"],
    img: json["img"],
    description: json["description"], 
    location: json["location"], 
    price: json["price"], 
    people: json["people"], 
    stars: json["stars"]
  );
}
}