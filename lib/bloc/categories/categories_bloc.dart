import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yumi/app_target.dart';
import 'package:yumi/model/categories_model.dart';
import 'package:yumi/service/categories_service.dart';
import 'package:yumi/statics/pagination_helper.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc()
      : super(CategoriesState(
            categoriesModelList: [],
            categoriesModelListLength: 0,
            paginationHelper: PaginationHelper())) {
    on<GetCategoriesEvent>((event, emit) async {
      if (state.paginationHelper.pageNumber < state.paginationHelper.lastPage &&
          !state.paginationHelper.isLoading) {
        emit(state.copyWith(
            paginationHelper:
                state.paginationHelper.copyWith(isLoading: true)));

        dynamic res;

        if (AppTarget.user == AppTargetUser.customers) {
          res = await CategoriesService.getCategoriesForCustomer(
            context: event.context,
            pagination: state.paginationHelper.toJson(),
            isPreOrder: event.isPreOrder,
          );
        }

        if (AppTarget.user == AppTargetUser.chefs) {
          res = await CategoriesService.getCategories(
            context: event.context,
            pagination: state.paginationHelper.toJson(),
            isPreOrder: event.isPreOrder,
          );
        }

        List<CategoriesModel> data = [];
        data = res['data'].map<CategoriesModel>((value) {
          return CategoriesModel.fromJson(value);
        }).toList();

        emit(state.copyWith(
          categoriesModelListed: [...state.categoriesModelList, ...data],
          paginationHelper: state.paginationHelper.copyWith(
            pageNumber: res['pagination']['page'],
            lastPage: res['pagination']['pages'],
            isLoading: false,
          ),
        ));
      }
    });

    on<ResetCategoryEvent>((event, emit) {
      emit(CategoriesState(
        categoriesModelList: [],
        categoriesModelListLength: 0,
        paginationHelper: PaginationHelper(),
      ));
    });
  }
}
