import 'package:firebase_auth/firebase_auth.dart';
import '/features/auth/auth.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResult> googleSignIn();
  Future<void> googleSignOut();
  Stream<User?> authStateChanges();
}
