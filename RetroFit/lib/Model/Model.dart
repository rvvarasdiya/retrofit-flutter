class Retro_Datamodel {

  int id;
  int createdAt;
  String name;
  String avatar;

  Retro_Datamodel({this.id, this.createdAt, this.name, this.avatar});

  Retro_Datamodel.fromJson(Map<String, dynamic> json) {
    id = json['userId'];
    createdAt = json['id'];
    name = json['title'];
    avatar = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.id;
    data['id'] = this.createdAt;
    data['title'] = this.name;
    data['body'] = this.avatar;
    return data;
  }
}
