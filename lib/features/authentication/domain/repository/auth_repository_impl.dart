abstract class AuthRepositoryImpl {
  Future<void> login(String email, String password);
  Future<void> signin(String name, String email, String password);
}
