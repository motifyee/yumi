part of 'categories_bloc.dart';

@immutable
abstract class CategoriesEvent {}

class ResetCategoryEvent implements CategoriesEvent {}

class GetCategoriesEvent implements CategoriesEvent {
  final BuildContext context;

  GetCategoriesEvent({required this.context});
}
