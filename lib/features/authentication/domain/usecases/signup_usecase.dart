import 'package:rent_n_hire/features/authentication/data/repositories/auth_repository.dart';

class SignupUsecase {
  AuthRepository authRepository;
  SignupUsecase({required this.authRepository});

  Future<void> execute(String name, String email, String password) async {
    await authRepository.signin(name, email, password);
  }
}
