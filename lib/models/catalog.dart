class CatalogModels{
  static  List<Item> items =[];}
class Item{
  final int id;
  final String name;
  final String desc;
  final String color;
  final int age;
  final String image;

  Item({required this.id, required this.name,
    required this.desc, required this.color,
    required this.age, required this.image});

  factory Item.fromMap(Map<dynamic,dynamic> map){
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        color: map["color"],
        age: map["age"],
        image: map["image"]);
  }
  toMap() {
    return {
    "id" : id,"name" : name,"desc" : desc,"color" : color,"price" : age,"image" : image
  };
  }}



