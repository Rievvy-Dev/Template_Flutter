class SignInRepository {
  Future<void> signIn({
    required String email,
    required Null Function() onSuccess,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email != 'rievvy') {
      throw 'Email ou senha inválidos';
    }
  }
}
