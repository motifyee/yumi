import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';
import 'package:yumi/app_config/app_config.dart';
import 'package:yumi/app_config/chef/chef_routes.dart';
import 'package:yumi/app_target.dart';
import 'package:yumi/bloc/basket/basket_form_bloc.dart';
import 'package:yumi/bloc/categories/categories_bloc.dart';
import 'package:yumi/bloc/chefs/chefs_list_bloc.dart';
import 'package:yumi/bloc/ingredient/ingredient_list_bloc.dart';
import 'package:yumi/bloc/meal/form/meal_form_bloc.dart';
import 'package:yumi/bloc/meal/ingredient_form/ingredient_form_bloc.dart';
import 'package:yumi/bloc/meal/meal_list/meal_list_bloc.dart';
import 'package:yumi/bloc/navigator/navigator_bloc.dart';
import 'package:yumi/bloc/user/user_bloc.dart';
import 'package:yumi/domain/schedule/data/repos/remote/schedule_remote_repo.dart';
import 'package:yumi/domain/schedule/data/sources/remote/schedule_remote_source.dart';
import 'package:yumi/app/pages/driver/driver_reg_cubit.dart';
import 'package:yumi/app/pages/chef_application/bloc.dart';
import 'package:yumi/app/pages/chef_application/documentation/cubit/docs_cubit.dart';
import 'package:yumi/app/pages/chef_application/documentation/bloc/icon_bloc.dart';
import 'package:yumi/app/pages/schedule/cubit/schedule_cubit.dart';
import 'package:yumi/app/pages/settings/bankinfo/bloc/bankinfo_bloc.dart';
import 'package:yumi/app/pages/settings/profile/bloc/profile_bloc.dart';

class ChefAppConfig implements AppConfig {
  @override
  AppTargetUser get appTargetUser => AppTargetUser.chefs;

  final RootStackRouter _appRouter = ChefRoutes();
  @override
  RootStackRouter get appRouter => _appRouter;

  final List<SingleChildWidget> _providers = [
    BlocProvider(create: (context) => UserBloc()),
    BlocProvider(create: (context) => BankInfoBloc()),
    BlocProvider(create: (context) => CategoriesBloc()),
    BlocProvider(create: (context) => ChefFlowBloc()),
    BlocProvider(create: (context) => MealFormBloc()),
    BlocProvider(create: (context) => SVGBloc()),
    BlocProvider(create: (context) => IngredientListBloc()),
    BlocProvider(create: (context) => IngredientFormBloc()),
    BlocProvider(create: (context) => ChefsListBloc()),
    BlocProvider(create: (context) => BasketFormBloc()),
    //
    BlocProvider(create: (context) => ProfileBloc()),
    BlocProvider(create: (context) => DocsCubit()),
    BlocProvider(create: (context) => MealListBloc()),
    BlocProvider(create: (context) => RegCubit()),
    // BlocProvider(create: (context) => ScheduleBloc(scheduleRepo: ScheduleRepo())),
    BlocProvider(create: (context) => ScheduleCubit()),
    BlocProvider(create: (context) => NavigatorBloc()),
    BlocProvider(create: (context) => NavigatorBloc()),
  ];
  @override
  List<SingleChildWidget> get blocProviders => _providers;
}
