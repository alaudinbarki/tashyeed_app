import 'package:dartz/dartz.dart';
import '/core/core.dart';
import '/features/profile/profile.dart';

abstract class UserProfileRepository {
  Future<Either<Failure, AppUser?>> getCurrentUser();
}
