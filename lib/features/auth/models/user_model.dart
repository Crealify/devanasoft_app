// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String displayName;
  final String username;
  final String email;
  final String profilePic;
  final String userId;
  final String description;
  UserModel({
    required this.displayName,
    required this.username,
    required this.email,
    required this.profilePic,
    required this.userId,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'username': username,
      'email': email,
      'profilePic': profilePic,
      'userId': userId,
      'description': description,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      displayName: map['displayName'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      profilePic: map['profilePic'] as String,
      userId: map['userId'] as String,
      description: map['description'] as String,
    );
  }
}
