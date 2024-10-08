import 'package:fpdart/fpdart.dart';
import 'package:common_code/common_code.dart';
import 'package:common_code/domain/profile/data/repos/profile_repo.dart';

class ResetPasswordByMobile
    extends UseCase<String, ResetPasswordByMobileParams> {
  final ProfileRepo repo;

  ResetPasswordByMobile({ProfileRepo? repo})
      : repo = repo ?? getIt<ProfileRepo>();

  @override
  Future<Either<Failure, String>> call(params) =>
      repo.resetPasswordByMobile(params.mobile).run();
}

class ResetPasswordByMobileParams extends Params {
  final String mobile;
  ResetPasswordByMobileParams(this.mobile);

  @override
  List<Object?> get props => [mobile];
}
