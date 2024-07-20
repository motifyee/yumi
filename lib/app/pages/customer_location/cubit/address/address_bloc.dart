import 'package:common_code/common_code.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common_code/domain/user/cubit/user_cubit.dart';

import 'package:yumi/global.dart';
import 'package:yumi/service/address_service.dart';

part 'address_bloc.freezed.dart';
part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc() : super(AddressState.initial()) {
    on<AddressEvent>((event, emit) {
      event.map(
        updateAddressListEvent: (evt) =>
            _updateAddressList(event: evt, emit: emit),
        getAddressListEvent: (evt) => _getAddressList(event: evt, emit: emit),
        resetAddressListEvent: (_) => emit(AddressState.initial()),
        editAddressEvent: (evt) => _editAddress(event: evt, emit: emit),
        deleteAddressEvent: (evt) => _deleteAddress(event: evt, emit: emit),
      );
    });
  }

  _updateAddressList(
      {required _updateAddressListEvent event,
      required Emitter<AddressState> emit}) {
    List<Address> address =
        [...event.address, ...state.addressList].unique((x) => x.id);

    G()
        .rd<UserCubit>()
        .saveLocation(address.firstWhere((e) => e.isDefault == true));

    emit(
      state.copyWith(
        addressList: address,
        pagination: state.pagination.copyWith(
          pageNumber: 1,
          lastPage: 1,
          isLoading: false,
        ),
      ),
    );
  }

  _getAddressList({
    required _getAddressListEvent event,
    required Emitter<AddressState> emit,
  }) async {
    if (state.pagination.pageNumber < state.pagination.lastPage &&
        !state.pagination.isLoading) {
      emit(state.copyWith(
          pagination: state.pagination.copyWith(isLoading: true)));

      Response res = await AddressService.getAddresses(
          context: event.context,
          pagination: {...state.pagination.toJson(), 'id': event.id}
            ..removeWhere((e, v) => v == null));

      List<Address> data = [];
      data = res.data.map<Address>((value) {
        return Address.fromJson(value);
      }).toList();

      add(AddressEvent.updateAddressListEvent(address: data));
    }
  }

  _editAddress(
      {required _editAddressEvent event,
      required Emitter<AddressState> emit}) async {
    emit(
        state.copyWith(pagination: state.pagination.copyWith(isLoading: true)));

    Response res = await AddressService.updateAddresses(
        context: event.context, address: event.address);

    List<Address> addressList = state.addressList.map((e) {
      return e.id == event.address.id
          ? e.copyWith(isDefault: true)
          : e.copyWith(isDefault: false);
    }).toList();

    if (res.statusCode == 200) {
      add(AddressEvent.updateAddressListEvent(address: addressList));
    }
  }

  _deleteAddress(
      {required _deleteAddressEvent event,
      required Emitter<AddressState> emit}) async {
    emit(
        state.copyWith(pagination: state.pagination.copyWith(isLoading: true)));

    Response res = await AddressService.deleteAddresses(
      context: event.context,
      address: event.address,
    );

    List<Address> addressList = state.addressList.map((e) {
      return e.id == event.address.id ? e.copyWith(isDeleted: true) : e;
    }).toList();

    if (res.statusCode == 200) {
      add(AddressEvent.updateAddressListEvent(address: addressList));
    }
  }
}
