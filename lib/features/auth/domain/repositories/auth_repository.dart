import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '/core/core.dart';
import '/features/auth/auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResult>> signIn();
  Future<void> signOut();
  Stream<User?> authStateChanges();
}
