// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketState _$BasketStateFromJson(Map<String, dynamic> json) {
  return _BasketState.fromJson(json);
}

/// @nodoc
mixin _$BasketState {
  Basket get basket => throw _privateConstructorUsedError;
  PaymentOption get paymentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketStateCopyWith<BasketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketStateCopyWith<$Res> {
  factory $BasketStateCopyWith(
          BasketState value, $Res Function(BasketState) then) =
      _$BasketStateCopyWithImpl<$Res, BasketState>;
  @useResult
  $Res call({Basket basket, PaymentOption paymentType});

  $BasketCopyWith<$Res> get basket;
}

/// @nodoc
class _$BasketStateCopyWithImpl<$Res, $Val extends BasketState>
    implements $BasketStateCopyWith<$Res> {
  _$BasketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basket = null,
    Object? paymentType = null,
  }) {
    return _then(_value.copyWith(
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as Basket,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentOption,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasketCopyWith<$Res> get basket {
    return $BasketCopyWith<$Res>(_value.basket, (value) {
      return _then(_value.copyWith(basket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketStateImplCopyWith<$Res>
    implements $BasketStateCopyWith<$Res> {
  factory _$$BasketStateImplCopyWith(
          _$BasketStateImpl value, $Res Function(_$BasketStateImpl) then) =
      __$$BasketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Basket basket, PaymentOption paymentType});

  @override
  $BasketCopyWith<$Res> get basket;
}

/// @nodoc
class __$$BasketStateImplCopyWithImpl<$Res>
    extends _$BasketStateCopyWithImpl<$Res, _$BasketStateImpl>
    implements _$$BasketStateImplCopyWith<$Res> {
  __$$BasketStateImplCopyWithImpl(
      _$BasketStateImpl _value, $Res Function(_$BasketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basket = null,
    Object? paymentType = null,
  }) {
    return _then(_$BasketStateImpl(
      basket: null == basket
          ? _value.basket
          : basket // ignore: cast_nullable_to_non_nullable
              as Basket,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentOption,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketStateImpl implements _BasketState {
  const _$BasketStateImpl({required this.basket, required this.paymentType});

  factory _$BasketStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketStateImplFromJson(json);

  @override
  final Basket basket;
  @override
  final PaymentOption paymentType;

  @override
  String toString() {
    return 'BasketState(basket: $basket, paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketStateImpl &&
            (identical(other.basket, basket) || other.basket == basket) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, basket, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      __$$BasketStateImplCopyWithImpl<_$BasketStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketStateImplToJson(
      this,
    );
  }
}

abstract class _BasketState implements BasketState {
  const factory _BasketState(
      {required final Basket basket,
      required final PaymentOption paymentType}) = _$BasketStateImpl;

  factory _BasketState.fromJson(Map<String, dynamic> json) =
      _$BasketStateImpl.fromJson;

  @override
  Basket get basket;
  @override
  PaymentOption get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$BasketStateImplCopyWith<_$BasketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
