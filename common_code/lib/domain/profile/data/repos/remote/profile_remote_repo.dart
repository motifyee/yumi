import 'package:fpdart/fpdart.dart';
import 'package:common_code/common_code.dart';
import 'package:common_code/domain/profile/data/repos/profile_repo.dart';
import 'package:common_code/domain/profile/data/sources/profile_source.dart';

class ProfileRemoteRepo implements ProfileRepo {
  final ProfileSrc profileSrc;

  ProfileRemoteRepo({ProfileSrc? profileSrc})
      : profileSrc = profileSrc ?? getIt<ProfileSrc>();

  @override
  TaskEither<Failure, Profile> loadProfile(String id, String withEmail) =>
      TaskEither.tryCatch(
        () => profileSrc.loadProfile(id, withEmail),
        (error, stackTrace) => switch (error) {
          ServerException() => ServerFailure(error.toString()),
          _ => GenericFailure(error.toString()),
        } as Failure,
      );

  @override
  TaskEither<Failure, Profile> updateProfile(Profile profile) =>
      TaskEither.tryCatch(
        () async {
          await profileSrc.updateProfile(profile);
          return profile;
        },
        (error, stackTrace) => Failure.fromException(error),
      );

  @override
  TaskEither<Failure, String> deleteProfile() => TaskEither.tryCatch(
        () => profileSrc.deleteProfile(),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> getMobileOTP() => TaskEither.tryCatch(
        () => profileSrc.getMobileOTP(),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> verifyAddMobileOTP(String otp) =>
      TaskEither.tryCatch(
        () => profileSrc.verifyAddMobileOTP(otp),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, List<Review>> getReviews() => TaskEither.tryCatch(
        () => profileSrc.getReviews(),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> resetPasswordByEmail(String email) =>
      TaskEither.tryCatch(
        () => profileSrc.resetPasswordByEmail(email),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> resetPasswordByMobile(String mobile) =>
      TaskEither.tryCatch(
        () => profileSrc.resetPasswordByMobile(mobile),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> verifyResetPasswordByEmailOTP(
          String email, String otp, String password) =>
      TaskEither.tryCatch(
        () => profileSrc.verifyResetPasswordByEmailOTP(email, otp, password),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> verifyResetPasswordByMobileOTP(
          String mobile, String otp, String password) =>
      TaskEither.tryCatch(
        () => profileSrc.verifyResetPasswordByMobileOTP(mobile, otp, password),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> verifyEmail(String email) => TaskEither.tryCatch(
        () => profileSrc.verifyEmail(email),
        (error, stackTrace) => ServerFailure(error.toString()),
      );

  @override
  TaskEither<Failure, String> updateStatus(int status) {
    return TaskEither.tryCatch(
      () => profileSrc.updateStatus(status),
      (error, stackTrace) => Failure.fromException(error),
    );
  }
}
