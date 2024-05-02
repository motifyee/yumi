import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yumi/bloc/chefs/chefs_list_bloc.dart';
import 'package:yumi/bloc/meal/meal_list/meal_list_bloc.dart';
import 'package:yumi/bloc/news/news_bloc.dart';
import 'package:yumi/domain/chef/entity/chef.dart';
import 'package:yumi/generated/l10n.dart';
import 'package:yumi/model/meal_model.dart';
import 'package:yumi/route/route.gr.dart';
import 'package:yumi/screens/customer/meal_profile.dart';
import 'package:yumi/statics/theme_statics.dart';
import 'package:yumi/template/chef_bannar.dart';
import 'package:yumi/template/chef_meal_basket_card.dart';
import 'package:yumi/template/pagination_template.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({super.key});

  final PageController favPageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChefsListBloc()),
        BlocProvider(create: (context) => NewsBloc()),
        BlocProvider(create: (context) => MealListBloc()),
      ],
      child: Builder(builder: (context) {
        return BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ThemeSelector.statics.defaultBlockGap),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/heart.svg',
                        height: ThemeSelector.statics.defaultInputGap,
                        colorFilter: ColorFilter.mode(
                            ThemeSelector.colors.secondary, BlendMode.srcIn),
                      ),
                      SizedBox(width: ThemeSelector.statics.defaultGap),
                      Text(
                        state.selectedList == 0
                            ? S.of(context).chefs
                            : S.of(context).meals,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Expanded(child: Container()),
                      GestureDetector(
                        onTap: () {
                          favPageController.jumpToPage(0);
                          context
                              .read<NewsBloc>()
                              .add(NewsEvent(selectedList: 0));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  ThemeSelector.statics.defaultInputGap),
                          child: SvgPicture.asset(
                            'assets/images/users.svg',
                            colorFilter: ColorFilter.mode(
                                state.selectedList == 0
                                    ? ThemeSelector.colors.primary
                                    : ThemeSelector.colors.secondary,
                                BlendMode.srcIn),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          favPageController.jumpToPage(1);
                          context
                              .read<NewsBloc>()
                              .add(NewsEvent(selectedList: 1));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  ThemeSelector.statics.defaultInputGap),
                          child: SvgPicture.asset(
                            'assets/images/meals.svg',
                            colorFilter: ColorFilter.mode(
                                state.selectedList == 1
                                    ? ThemeSelector.colors.primary
                                    : ThemeSelector.colors.secondary,
                                BlendMode.srcIn),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ThemeSelector.statics.defaultGap),
                  Expanded(
                    child: PageView(
                      controller: favPageController,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        PaginationTemplate(
                          scrollDirection: Axis.vertical,
                          loadDate: () {
                            context.read<ChefsListBloc>().add(GetChefsListEvent(
                                context: context,
                                menuTarget: MenuTarget.order,
                                isFavorite: true));
                          },
                          child: BlocConsumer<ChefsListBloc, ChefsListState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        ThemeSelector.statics.defaultGap),
                                child: Column(
                                  children: [
                                    for (var chef in state.chefs)
                                      GestureDetector(
                                        onTap: () {
                                          context.router.push(ChefProfileRoute(
                                              chef: chef,
                                              menuTarget: MenuTarget.order));
                                        },
                                        child: ChefBanner(
                                          menuTarget: MenuTarget.preOrder,
                                          chef: chef,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              (ThemeSelector
                                                      .statics.defaultGap *
                                                  10),
                                          height: ThemeSelector
                                              .statics.defaultImageHeightSmall,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                ThemeSelector.statics
                                                    .defaultBorderRadius),
                                            topRight: Radius.circular(
                                                ThemeSelector.statics
                                                    .defaultBorderRadius),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        PaginationTemplate(
                          loadDate: () {
                            context
                                .read<MealListBloc>()
                                .add(MealListGetFavoriteMealsEvent());
                          },
                          scrollDirection: Axis.vertical,
                          child: BlocConsumer<MealListBloc, MealListState>(
                            listener: (context, state) {},
                            builder: (context, state) {
                              return Column(
                                children: [
                                  for (var meal in state.meals)
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              ThemeSelector.statics.defaultGap),
                                      child: Column(
                                        children: [
                                          ChefMealBasketCard(
                                            meal: meal,
                                            isDisabled: false,
                                            onTap: () {
                                              showModalBottomSheet(
                                                context: context,
                                                builder: (context) =>
                                                    MealProfileScreen(
                                                  meal: meal,
                                                  chef: Chef(id: meal.chefId),
                                                ),
                                                backgroundColor:
                                                    Colors.transparent,
                                                scrollControlDisabledMaxHeightRatio:
                                                    1,
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),

                                  // Padding(
                                  //   padding: EdgeInsets.symmetric(
                                  //       horizontal:
                                  //           ThemeSelector.statics.defaultGap),
                                  //   child: Column(
                                  //     children: [
                                  //       Container(
                                  //         width: ThemeSelector
                                  //             .statics.defaultGapExtraExtreme,
                                  //         height: ThemeSelector
                                  //             .statics.defaultGapXXXL,
                                  //         clipBehavior: Clip.hardEdge,
                                  //         decoration: BoxDecoration(
                                  //           borderRadius:
                                  //               BorderRadius.circular(
                                  //                   ThemeSelector
                                  //                       .statics.defaultGap),
                                  //         ),
                                  //         child: category.image != null
                                  //             ? Image.memory(
                                  //                 base64Decode(
                                  //                   category.image ?? '',
                                  //                 ),
                                  //                 fit: BoxFit.cover,
                                  //                 alignment:
                                  //                     Alignment.topCenter,
                                  //               )
                                  //             : Image.asset(
                                  //                 'assets/images/354'
                                  //                 '.jpeg',
                                  //                 fit: BoxFit.cover,
                                  //                 alignment:
                                  //                     Alignment.topCenter,
                                  //               ),
                                  //       ),
                                  //       SizedBox(
                                  //           height: ThemeSelector
                                  //               .statics.defaultGap),
                                  //       Text(
                                  //         category.name ?? '',
                                  //         style: Theme.of(context)
                                  //             .textTheme
                                  //             .bodyMedium,
                                  //       )
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
