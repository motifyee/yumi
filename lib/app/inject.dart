import 'package:get_it/get_it.dart';
import 'package:yumi/domain/profile/data/repos/profile_repo.dart';
import 'package:yumi/domain/profile/data/repos/remote/profile_remote_repo.dart';
import 'package:yumi/domain/profile/data/sources/profile_source.dart';
import 'package:yumi/domain/profile/data/sources/remote/profile_remote_src.dart';
import 'package:yumi/domain/schedule/data/repos/schedule_repo.dart';
import 'package:yumi/domain/schedule/data/repos/remote/schedule_remote_repo.dart';
import 'package:yumi/domain/schedule/data/sources/schedule_sources.dart';
import 'package:yumi/domain/schedule/data/sources/remote/schedule_remote_source.dart';

// get_it -> dependency injection, allocates resources app wide
// view_it -> state management using get_it

// getx -> state management, routing, .....
// get

// Provider
// Riverpod
// Bloc/Cubit

final sl = GetIt.I; // sl == Service Locator
final getIt = sl.get;

void initGetItBase() {}

Future<void> init() async {
  // instantianes a new instance of ProfileRepo each time it is called
  sl.registerFactory<ProfileRepo>(() => ProfileRemoteRepo(profileSrc: sl()));
  sl.registerFactory<ProfileSrc>(() => ProfileRemoteSrc());

  sl.registerFactory<ScheduleRepo>(() => ScheduleRemoteRepo());
  sl.registerFactory<ScheduleSrc>(() => ScheduleRemoteSrc());

  // instantianes a new instance of ProfileRepo first time it is called
  // saves the instance for future Use

  // getIt<UserState>();
  // sl.registerLazySingleton<UserState>(() => G.read<UserBloc>().state);
  // sl.registerFactory<UserState>(() => G.read<UserBloc>().state);
}
