<<<<<<< HEAD
class UserModel {
  final String? id;
  final DateTime? createdAt;
  final String name;
  final String? avatar;

  UserModel({this.id, this.createdAt, required this.name, this.avatar});
=======
//Created on http://app.quicktype.io/

class UserModel {
  final String id;
  final DateTime? createdAt;
  final String name;
  final String avatar;

  UserModel({required this.id, required this.createdAt, required this.name, required this.avatar});
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json["id"],
      createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      name: json["name"],
      avatar: json["avatar"],
    );
  }

  static List<UserModel> fromJsonList(List list) {
    return list.map((item) => UserModel.fromJson(item)).toList();
  }

  @override
<<<<<<< HEAD
  String toString() => "$name";
=======
  String toString() => name;
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2

  @override
  operator ==(o) => o is UserModel && o.id == id;

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ createdAt.hashCode;
}
