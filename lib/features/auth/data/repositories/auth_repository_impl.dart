import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '/features/features.dart';
import '/core/core.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;

  AuthRepositoryImpl(this._authRemoteDataSource);
  @override
  Stream<User?> authStateChanges() {
    try {
      final result = _authRemoteDataSource.authStateChanges();
      return result;
    } catch (e) {
      throw const Failure('there is no user');
    }
  }

  @override
  Future<Either<Failure, AuthResult>> signIn() async {
    try {
      final result = await _authRemoteDataSource.googleSignIn();
      return Right(result);
    } catch (e) {
      return const Left(Failure('something went wrong'));
    }
  }

  @override
  Future<void> signOut() async {
    return await _authRemoteDataSource.googleSignOut();
  }
}
