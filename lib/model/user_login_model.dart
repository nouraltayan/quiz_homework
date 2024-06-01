// model/user_login_model.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserLoginModel {
  String username;
  UserLoginModel({
    required this.username,
  });

  UserLoginModel copyWith({
    String? username,
  }) {
    return UserLoginModel(
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
    };
  }

  factory UserLoginModel.fromMap(Map<String, dynamic> map) {
    return UserLoginModel(
      username: map['username'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserLoginModel.fromJson(String source) => UserLoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserLoginModel(username: $username)';

  @override
  bool operator ==(covariant UserLoginModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.username == username;
  }

  @override
  int get hashCode => username.hashCode;
}
