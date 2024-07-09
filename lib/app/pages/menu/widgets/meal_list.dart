import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yumi/app/components/loading_indicator/loading.dart';
import 'package:yumi/app/pages/basket/cubit/basket_cubit.dart';
import 'package:yumi/app/pages/menu/cubit/categories/categories_cubit.dart';
import 'package:yumi/app/pages/menu/cubit/meal/meal_cubit.dart';
import 'package:yumi/domain/basket/entity/invoice_detail.dart';
import 'package:yumi/domain/chef/entity/chef.dart';
import 'package:yumi/domain/meal/entity/meal.dart';
import 'package:yumi/domain/user/cubit/user_cubit.dart';
import 'package:yumi/app/pages/menu/widgets/customer_pre_order_form.dart';
import 'package:yumi/generated/l10n.dart';
import 'package:yumi/statics/theme_statics.dart';
import 'package:yumi/app/pages/menu/widgets/meal_list_card.dart';
import 'package:yumi/app/components/pagination_template.dart';

class MealListScreen extends StatelessWidget {
  MealListScreen(
      {super.key,
      required this.menuTarget,
      this.categoryId,
      this.isResetOnInit = true});

  final PageController favPageController = PageController(initialPage: 0);

  final MenuTarget menuTarget;
  final int? categoryId;
  final bool isResetOnInit;

  @override
  Widget build(BuildContext context) {
    if (isResetOnInit) {
      context
          .read<MealCubit>()
          .reset(menuTarget: menuTarget, categoryId: categoryId);
      context.read<CategoriesCubit>().reset();
    }
    return Container(
      decoration: BoxDecoration(
          color: ThemeSelector.colors.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
                ThemeSelector.statics.defaultBorderRadiusExtreme),
            topRight: Radius.circular(
                ThemeSelector.statics.defaultBorderRadiusExtreme),
          )),
      padding: EdgeInsets.only(
        top: ThemeSelector.statics.defaultGapExtreme,
        left: ThemeSelector.statics.defaultBlockGap,
        right: ThemeSelector.statics.defaultBlockGap,
      ),
      child: PageView(
        controller: favPageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _MealList(
              favPageController: favPageController, menuTarget: menuTarget),
          _CategoriesList(
              favPageController: favPageController, menuTarget: menuTarget),
        ],
      ),
    );
  }
}

class _MealList extends StatelessWidget {
  const _MealList({required this.favPageController, required this.menuTarget});

  final PageController favPageController;
  final MenuTarget menuTarget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: SvgPicture.asset(
                'assets/images/chef_meals_list_icon.svg',
                height: ThemeSelector.statics.defaultInputGap,
                colorFilter: ColorFilter.mode(
                    ThemeSelector.colors.secondary, BlendMode.srcIn),
              ),
            ),
            SizedBox(width: ThemeSelector.statics.defaultGap),
            Text(
              S.of(context).dishName,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            BlocBuilder<MealCubit, MealState>(
              builder: (context, state) {
                String category = context
                        .read<CategoriesCubit>()
                        .state
                        .categoriesPage
                        .data
                        .firstWhereOrNull((e) => e.id == state.selectedCategory)
                        ?.name ??
                    '';
                return Expanded(
                    child: category.isEmpty
                        ? const SizedBox.shrink()
                        : Row(
                            children: [
                              SizedBox(
                                  width: ThemeSelector.statics.defaultMicroGap),
                              GestureDetector(
                                onTap: () {
                                  context.read<MealCubit>().reset();
                                  context
                                      .read<MealCubit>()
                                      .updateCategory(selectedCategory: 0);
                                },
                                child: Container(
                                    padding: EdgeInsets.all(
                                        ThemeSelector.statics.defaultMicroGap),
                                    decoration: BoxDecoration(
                                        color:
                                            ThemeSelector.colors.backgroundTant,
                                        borderRadius: BorderRadius.circular(
                                            ThemeSelector
                                                .statics.defaultMicroGap)),
                                    child: Row(
                                      children: [
                                        Text(
                                          category,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                        ),
                                        SizedBox(
                                            width: ThemeSelector
                                                .statics.defaultMicroGap),
                                        Text(
                                          'x',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ));
              },
            ),
            GestureDetector(
              onTap: () {
                favPageController.jumpToPage(0);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ThemeSelector.statics.defaultInputGap),
                child: SvgPicture.asset(
                  'assets/images/chef_meals_list.svg',
                  colorFilter: ColorFilter.mode(
                      ThemeSelector.colors.primary, BlendMode.srcIn),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                favPageController.jumpToPage(1);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ThemeSelector.statics.defaultInputGap),
                child: SvgPicture.asset(
                  'assets/images/meals.svg',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: ThemeSelector.statics.defaultGap),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) => PaginationTemplate(
              scrollDirection: Axis.vertical,
              loadDate: () {
                context.read<MealCubit>().updateMeals(
                      menuTarget: menuTarget,
                    );
              },
              child: BlocConsumer<MealCubit, MealState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ThemeSelector.statics.defaultGap),
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                            for (Meal meal in state.pagination.data)
                              MealListCard(
                                meal: meal,
                                onTap: () {
                                  if (meal.isPreOrder == true) {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) =>
                                          CustomerPreOrderForm(
                                        meal: meal,
                                        chef: Chef(id: meal.chefId),
                                        isPickUpOnly:
                                            meal.isPickUpOnly ?? false,
                                      ),
                                    );
                                  } else {
                                    context.read<BasketCubit>().createBasket(
                                        basket: context
                                            .read<BasketCubit>()
                                            .state
                                            .basket
                                            .copyWith(
                                              isPreorder: false,
                                              isSchedule: false,
                                              shippedAddressId: context
                                                  .read<UserCubit>()
                                                  .state
                                                  .address
                                                  ?.id,
                                              isPickupOnly:
                                                  meal.isPickUpOnly ?? false,
                                              invoiceDetails: [
                                                InvoiceDetail.fromMeal(
                                                    meal: meal)
                                              ],
                                              invoice: context
                                                  .read<BasketCubit>()
                                                  .state
                                                  .basket
                                                  .invoice
                                                  .copyWith(
                                                    chefID: meal.chefId,
                                                  ),
                                            ));
                                  }
                                },
                              ),
                            if (state.pagination.isLoading)
                              Expanded(child: Loading()),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CategoriesList extends StatelessWidget {
  const _CategoriesList(
      {required this.favPageController, required this.menuTarget});

  final PageController favPageController;
  final MenuTarget menuTarget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: SvgPicture.asset(
                'assets/images/chef_meals_list_icon.svg',
                height: ThemeSelector.statics.defaultInputGap,
                colorFilter: ColorFilter.mode(
                    ThemeSelector.colors.secondary, BlendMode.srcIn),
              ),
            ),
            SizedBox(width: ThemeSelector.statics.defaultGap),
            Text(
              S.of(context).cuisines,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Expanded(child: Container()),
            GestureDetector(
              onTap: () {
                favPageController.jumpToPage(0);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ThemeSelector.statics.defaultInputGap),
                child: SvgPicture.asset(
                  'assets/images/chef_meals_list.svg',
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                favPageController.jumpToPage(1);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ThemeSelector.statics.defaultInputGap),
                child: SvgPicture.asset(
                  'assets/images/meals.svg',
                  colorFilter: ColorFilter.mode(
                      ThemeSelector.colors.primary, BlendMode.srcIn),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: ThemeSelector.statics.defaultGap),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) => PaginationTemplate(
              loadDate: () {
                context.read<CategoriesCubit>().getAllCategories(
                      isPreOrder: menuTarget == MenuTarget.preOrder,
                    );
                // .add(GetCategoriesEvent(
                //     context: context,
                //     isPreOrder: menuTarget == MenuTarget.preOrder));
              },
              scrollDirection: Axis.vertical,
              child: BlocConsumer<CategoriesCubit, CategoriesState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          for (var category in state.categoriesPage.data)
                            GestureDetector(
                              onTap: () {
                                context.read<MealCubit>().reset();
                                context.read<MealCubit>().updateCategory(
                                    selectedCategory: category.id ?? 0);
                                favPageController.jumpToPage(0);
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        ThemeSelector.statics.defaultGap),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: ThemeSelector
                                            .statics.defaultImageHeightSmall,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                ThemeSelector
                                                    .statics.defaultGap),
                                            topRight: Radius.circular(
                                                ThemeSelector
                                                    .statics.defaultGap),
                                          ),
                                        ),
                                        child: Image.memory(
                                          Uri.parse(category.image ?? '')
                                                  .data
                                                  ?.contentAsBytes() ??
                                              Uint8List(0),
                                          fit: BoxFit.cover,
                                          alignment: Alignment.topCenter,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Image.asset(
                                            'assets/images/354.jpeg',
                                            fit: BoxFit.cover,
                                            alignment: Alignment.topCenter,
                                          ),
                                        )),
                                    SizedBox(
                                        height:
                                            ThemeSelector.statics.defaultGap),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              ThemeSelector.statics.defaultGap),
                                      child: Text(
                                        category.name ?? '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            ThemeSelector.statics.defaultGap),
                                  ],
                                ),
                              ),
                            ),
                          if (state.categoriesPage.isLoading)
                            Expanded(child: Loading()),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
