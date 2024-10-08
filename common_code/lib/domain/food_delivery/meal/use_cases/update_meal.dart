import 'package:common_code/common_code.dart';
import 'package:common_code/domain/food_delivery/meal/data/repo/meal_repo.dart';
import 'package:fpdart/src/either.dart';

class UpdateMeal extends UseCase<String, UpdateMealParams> {
  final MealRepo mealRepo;

  UpdateMeal({MealRepo? mealRepo}) : mealRepo = mealRepo ?? getIt<MealRepo>();
  @override
  Future<Either<Failure, String>> call(UpdateMealParams params) {
    return mealRepo.updateMeal(meal: params.meal).run();
  }
}

class UpdateMealParams extends Params {
  final Meal meal;

  UpdateMealParams({required this.meal});

  @override
  List<Object?> get props => [meal];
}
