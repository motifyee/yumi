import 'package:fpdart/fpdart.dart';
import 'package:common_code/common_code.dart';
import 'package:common_code/domain/profile/data/repos/profile_repo.dart';

class ResetPasswordByEmail extends UseCase<String, ResetPasswordByEmailParams> {
  final ProfileRepo repo;

  ResetPasswordByEmail({ProfileRepo? repo})
      : repo = repo ?? getIt<ProfileRepo>();

  @override
  Future<Either<Failure, String>> call(params) =>
      repo.resetPasswordByEmail(params.email).run();
}

class ResetPasswordByEmailParams extends Params {
  final String email;
  ResetPasswordByEmailParams(this.email);

  @override
  List<Object?> get props => [email];
}
