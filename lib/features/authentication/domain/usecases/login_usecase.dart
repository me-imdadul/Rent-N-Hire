import '../../data/repositories/auth_repository.dart';
import '../entities/user.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  Future<User> execute(String username, String password) async {
    return await authRepository.login(username, password);
  }
}
