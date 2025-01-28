// lib/features/authentication/data/repositories/auth_repository.dart

import 'package:rent_n_hire/features/authentication/data/models/user_model.dart';
import 'package:rent_n_hire/features/authentication/domain/entities/user.dart';
import 'package:rent_n_hire/features/authentication/domain/repository/auth_repository_impl.dart';

import '../datasources/auth_api.dart';

class AuthRepository implements AuthRepositoryImpl {
  final AuthApi authApi;

  AuthRepository({required this.authApi});

  @override
  Future<User> login(String email, String password) async {
    var response = await authApi.login(email, password);
    return User.fromModel(UserModel.fromJson(response));
  }

  @override
  Future<User> signin(String name, String email, String password) async {
    var response = await authApi.signUp(email, password);
    return User.fromModel(UserModel.fromJson(response));
  }
}
