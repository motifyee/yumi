import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yumi/app/components/loading_indicator/loading.dart';
import 'package:yumi/app/pages/menu/cubit/form/meal_form_bloc.dart';
import 'package:yumi/app/pages/menu/cubit/ingredient_form/ingredient_form_bloc.dart';
import 'package:yumi/bloc/ingredient/ingredient_list_bloc.dart';
import 'package:yumi/domain/meal/entity/ingredients.dart';
import 'package:yumi/generated/l10n.dart';
import 'package:yumi/statics/regex.dart';
import 'package:yumi/statics/theme_statics.dart';
import 'package:yumi/app/components/text_form_field.dart';
import 'package:yumi/validators/required_validator.dart';

class IngredientsForm extends StatelessWidget {
  IngredientsForm({super.key, required this.ingredientFormKey});

  final GlobalKey<FormState> ingredientFormKey;
  Ingredients ingredient = const Ingredients();

  @override
  Widget build(BuildContext context) {
    context.read<IngredientListBloc>().add(IngredientListUpdateEvent(context: context));

    List<Ingredients> filteredList({
      required List<Ingredients> list,
      required List<Ingredients> selected,
    }) {
      return list.where((element) {
        return !selected.any((e) => e.id == element.id);
      }).toList();
    }

    return Form(
      key: ingredientFormKey,
      child: BlocConsumer<IngredientFormBloc, IngredientFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(
              left: ThemeSelector.statics.defaultBlockGap,
              right: ThemeSelector.statics.defaultBlockGap,
              top: ThemeSelector.statics.defaultGapExtreme,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: ThemeSelector.colors.background,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(ThemeSelector.statics.defaultBorderRadiusExtreme),
                  topLeft: Radius.circular(ThemeSelector.statics.defaultBorderRadiusExtreme),
                )),
            width: MediaQuery.of(context).size.width,
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * .9),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: LayoutBuilder(
                      builder: (context, constraints) => SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints.tightFor(height: max(200, constraints.maxHeight)),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Table(
                                  columnWidths: const {
                                    0: FlexColumnWidth(1),
                                    1: IntrinsicColumnWidth(),
                                    2: IntrinsicColumnWidth(),
                                  },
                                  children: [
                                    TableRow(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: ThemeSelector.colors.secondaryFaint,
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: ThemeSelector.statics.defaultGap),
                                          child: Text(
                                            S.of(context).ingredients,
                                            style: Theme.of(context).textTheme.labelMedium,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: ThemeSelector.statics.defaultGap),
                                          child: Text(
                                            S.of(context).measurement,
                                            style: Theme.of(context).textTheme.labelMedium,
                                          ),
                                        ),
                                        const SizedBox(width: 60),
                                      ],
                                    ),
                                    for (var ingredient in state.ingredientsModelList)
                                      TableRow(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: ThemeSelector.colors.secondaryFaint,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: ThemeSelector.statics.defaultGap),
                                            child: Text(
                                              ingredient.name.toString(),
                                              style: Theme.of(context).textTheme.bodyMedium,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(vertical: ThemeSelector.statics.defaultGap),
                                            child: Text(
                                              ingredient.portionGrams.toString(),
                                              style: Theme.of(context).textTheme.bodyMedium,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              context.read<IngredientFormBloc>().add(IngredientFormRemoveEvent(ingredientsModel: ingredient));
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(horizontal: ThemeSelector.statics.defaultLineGap, vertical: ThemeSelector.statics.defaultGap),
                                              child: Icon(
                                                Icons.close,
                                                color: ThemeSelector.colors.primary,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ThemeSelector.statics.defaultGap),
                  BlocBuilder<IngredientListBloc, IngredientListState>(
                    builder: (context, state) {
                      List<Ingredients> selectFromList = filteredList(list: state.ingredients, selected: context.read<IngredientFormBloc>().state.ingredientsModelList);
                      return selectFromList.isEmpty
                          ? state.loading
                              ? Loading(size: ThemeSelector.fonts.font_38)
                              : const SizedBox.shrink()
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: TextFormFieldTemplate(
                                    borderStyle: TextFormFieldBorderStyle.borderedRound,
                                    objectValidators: requiredObjectValidator,
                                    dropdownSelection: true,
                                    dropdownSelectionTargetLabel: 'name',
                                    dropdownSelectionList: selectFromList,
                                    initialValue: ingredient.id != null ? selectFromList.firstWhere((e) => e.id == ingredient.id) : selectFromList.firstOrNull,
                                    onChange: (value) {},
                                    onSave: (value) {
                                      ingredient = ingredient.copyWith(
                                        id: value.id,
                                        name: value.name,
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(width: ThemeSelector.statics.defaultGap),
                                Flexible(
                                  flex: 1,
                                  child: TextFormFieldTemplate(
                                    textInputType: TextInputType.number,
                                    borderStyle: TextFormFieldBorderStyle.borderedRound,
                                    validators: requiredValidator,
                                    inputFormatters: [FilteringTextInputFormatter.allow(CustomRegex.numberWith2DecimalOnly)],
                                    initialValue: ingredient.portionGrams,
                                    onSave: (value) {
                                      ingredient = ingredient.copyWith(
                                        portionGrams: double.tryParse(value),
                                      );
                                    },
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    if (ingredientFormKey.currentState!.validate()) {
                                      ingredientFormKey.currentState!.save();

                                      context.read<IngredientFormBloc>().add(IngredientFormAddEvent(ingredientsModel: Ingredients.fromJson(ingredient.toJson())));

                                      ingredient = const Ingredients();
                                      ingredientFormKey.currentState!.reset();
                                    }
                                  },
                                  child: SvgPicture.asset('assets/images/plus.svg'),
                                ),
                              ],
                            );
                    },
                  ),
                  SizedBox(height: ThemeSelector.statics.defaultGap),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          onPressed: () {
                            context.router.popForced();
                          },
                          child: Text(
                            S.of(context).cancel,
                            style: Theme.of(context).textTheme.bodyMedium,
                          )),
                      TextButton(
                          onPressed: () {
                            if (state.ingredientsModelList.isNotEmpty) {
                              context.read<MealFormBloc>().add(MealFormUpdateEvent(mealModel: context.read<MealFormBloc>().state.mealModel.copyWith(ingredients: state.ingredientsModelList)));
                              context.router.popForced();
                            }
                          },
                          child: Text(
                            S.of(context).save,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: ThemeSelector.colors.primary),
                          )),
                    ],
                  ),
                  SizedBox(height: ThemeSelector.statics.defaultGap),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
