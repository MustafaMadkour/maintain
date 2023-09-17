class ShipsModel {
  String? id;
  String? name;
  String? password;
  int? imoNumber;
  String? type;
  int? capacity;
  String? flag;
  String? image;

  ShipsModel(
      {this.id,
      this.name,
      this.password,
      this.imoNumber,
      this.type,
      this.capacity,
      this.flag,
      this.image});

  ShipsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    password = json['password'];
    imoNumber = json['imo_number'];
    type = json['type'];
    capacity = json['capacity'];
    flag = json['flag'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['password'] = this.password;
    data['imo_number'] = this.imoNumber;
    data['type'] = this.type;
    data['capacity'] = this.capacity;
    data['flag'] = this.flag;
    data['image'] = this.image;
    return data;
  }
}
