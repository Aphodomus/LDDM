import 'dart:convert';

class UserModel {
  final String name;
  final String token;

  UserModel({this.name, this.token});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'token': token,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], token: map['token']);
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  UserModel copyWith({String name, String token}) {
    return UserModel(name: name ?? this.name, token: token ?? this.token);
  }
}
