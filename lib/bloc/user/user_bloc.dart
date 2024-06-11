import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:yumi/app/core/setup/signalr.dart';
import 'package:yumi/app/core/signal_r.dart';
import 'package:yumi/app/pages/auth/registeration/model/address.dart';
import 'package:yumi/app_config/chef/chef_signalr.dart';
import 'package:yumi/app_config/customer/customer_signalr.dart';
import 'package:yumi/app_config/driver/driver_signalr.dart';
import 'package:yumi/model/user/user_model.dart';
import 'package:yumi/service/user_status_service.dart';
import 'package:yumi/statics/local_storage.dart';

part 'user_event.dart';
part 'user_state.dart';

/// UserUpdateLocationEvent  ==> to prefs & state
/// UserFromJsonEvent        ==> to prefs & state & Signalr & callback
/// UserFromSharedRefEvent   ==> from prefs & fromJson(callback1, updateLocation) & callback2
/// UserStatusUpdateEvent    ==>
/// UserResetEvent           ==> reset: prefs & state
class xUserBloc extends Bloc<xUserEvent, xUserState> {
  xUserBloc()
      : super(const xUserState(
            user: UserModel(
          accessToken: '',
          chefId: '',
          code: '',
          email: '',
          expiresIn: '',
          message: '',
          userName: '',
        ))) {
    on<UserUpdateLocationEvent>((event, emit) async {
      await LocalStorage.sharedRef
          .setValue(LocalStorage.userLocation, event.address);

      emit(state.copyWith(address: event.address));
    });

    on<SavexUserFromJsonEvent>((event, emit) async {
      await LocalStorage.sharedRef.setValue(LocalStorage.user, event.user);
      UserModel user = UserModel.fromJson(event.user);

      /// must init Signalr with access token
      Signalr.accessToken = user.accessToken;

      Signalr.startConnection().then((value) {
        /// initial listen to global messages from signal r
        GlobalSignalR.initial();

        /// initial listen to chef messages from signal r
        ChefSignalR.initial();

        /// initial listen to customer messages from signal r
        CustomerSignalR.initial();

        /// initial listen to driver messages from signal r
        DriverSignalR.initial();
      });

      emit(state.copyWith(user: user));
      if (event.routeAfterLogin != null) event.routeAfterLogin!();
    });

    on<LoadxUserFromSharedRefEvent>((event, emit) async {
      Map<String, dynamic>? user =
          await LocalStorage.sharedRef.getValue(LocalStorage.user);
      Map<String, dynamic>? userLocation =
          await LocalStorage.sharedRef.getValue(LocalStorage.userLocation);

      if (user != null) {
        add(SavexUserFromJsonEvent(
            user: user,
            routeAfterLogin: () {
              if (userLocation != null) {
                add(UserUpdateLocationEvent(
                    address: Address.fromJson(userLocation)));
              }
              event.afterFetchSuccess(
                event.context,
                event.route,
                UserModel.fromJson(user),
              );
            }));
      } else {
        event.autoLogin(event.context);
      }
      FlutterNativeSplash.remove();
    });

    on<UserStatusUpdateEvent>((event, emit) async {
      if (state.loading) return;
      emit(state.copyWith(loading: true));

      int status = state.user.status == 1 ? 0 : 1;
      if (event.statusEnum == StatusEnum.offline) status = 0;
      if (event.statusEnum == StatusEnum.online) status = 1;
      if (event.statusEnum == StatusEnum.busy) status = 2;
      try {
        await UserStatusService.updateStatus(status: status);

        await LocalStorage.sharedRef
            .setValue(LocalStorage.user, state.user.copyWith(status: status));
        emit(state.copyWith(
          loading: false,
          user: state.user.copyWith(status: status),
        ));
      } catch (err) {
        emit(state.copyWith(
          loading: false,
        ));
      }
    });

    on<UserResetEvent>((event, emit) async {
      await LocalStorage.sharedRef.removeValue(LocalStorage.user);
      await LocalStorage.sharedRef.removeValue(LocalStorage.token);
      await LocalStorage.sharedRef.removeValue(LocalStorage.userLocation);
      Signalr.stopConnection();
      emit(state.copyWith(
          user: const UserModel(
        accessToken: '',
        chefId: '',
        code: '',
        email: '',
        expiresIn: '',
        message: '',
        userName: ' ',
      )));
    });
  }
}
