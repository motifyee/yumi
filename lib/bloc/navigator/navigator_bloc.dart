import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'navigator_event.dart';
part 'navigator_state.dart';

class NavigatorBloc extends Bloc<NavigatorEvent, NavigatesState> {
  NavigatorBloc() : super(NavigatesState(selectedIndex: 0)) {
    on<NavigatorEvent>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(index: event.selectedIndex));
    });
  }
}
