class Item {
  String id;
  String name;
  String image;
  int weight;
 

  Item({this.id, this.name, this.image, this.weight});

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['weight'] = this.weight;
    return data;
  }
}
