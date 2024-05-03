import 'package:dartz/dartz.dart';
import '/core/core.dart';
import '/features/profile/domain/domain.dart';

class UserProfileUseCase implements UseCase<AppUser?, NoParams> {
  final UserProfileRepository _repository;

  UserProfileUseCase(this._repository);

  @override
  Future<Either<Failure, AppUser?>> call(NoParams params) async {
    return await _repository.getCurrentUser();
  }
}
