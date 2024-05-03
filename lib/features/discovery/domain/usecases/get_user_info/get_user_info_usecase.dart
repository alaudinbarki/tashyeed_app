import 'package:dartz/dartz.dart';
import '/features/discovery/discovery.dart';
import '/core/core.dart';
import '/features/profile/domain/domain.dart';

class GetUserInfo implements StreamUseCase<AppUser, String> {
  final RemoteQuoteRepository _repository;
  GetUserInfo(this._repository);

  @override
  Stream<Either<Failure, AppUser>> call(String userId) async* {
    yield* _repository.getUserInfo(userId);
  }
}
