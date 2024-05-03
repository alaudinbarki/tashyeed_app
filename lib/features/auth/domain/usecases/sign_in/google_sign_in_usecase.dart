import 'package:dartz/dartz.dart';
import '/features/auth/auth.dart';
import '/core/core.dart';

class GoogleSignInUseCase implements UseCase<AuthResult, NoParams> {
  final AuthRepository _authRepository;

  GoogleSignInUseCase(this._authRepository);
  @override
  Future<Either<Failure, AuthResult>> call(NoParams params) async {
    return await _authRepository.signIn();
  }
}
