import '../../data/models/user_model.dart';

class User {
  final String id;
  final String username;
  final String token;

  User({
    required this.id,
    required this.username,
    required this.token,
  });

  factory User.fromModel(UserModel model) {
    return User(
      id: model.id,
      username: model.username,
      token: model.token,
    );
  }
}
