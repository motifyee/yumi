// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationS _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  String get id => throw _privateConstructorUsedError;
  @NotificationTypeConverter()
  NotificationTypeEnum get notificationType =>
      throw _privateConstructorUsedError;
  @DateTimeToIso8601StringConverter()
  DateTime get date => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_ID')
  int get typeID => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_ID')
  String? get driverID => throw _privateConstructorUsedError;
  @JsonKey(name: 'chef_ID')
  String? get chefID => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_ID')
  String? get clientID => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee_ID')
  int? get employeeID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<NotificationS> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          NotificationS value, $Res Function(NotificationS) then) =
      _$NotificationCopyWithImpl<$Res, NotificationS>;
  @useResult
  $Res call(
      {String id,
      @NotificationTypeConverter() NotificationTypeEnum notificationType,
      @DateTimeToIso8601StringConverter() DateTime date,
      String description,
      @JsonKey(name: 'type_ID') int typeID,
      @JsonKey(name: 'driver_ID') String? driverID,
      @JsonKey(name: 'chef_ID') String? chefID,
      @JsonKey(name: 'client_ID') String? clientID,
      @JsonKey(name: 'employee_ID') int? employeeID});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends NotificationS>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? notificationType = null,
    Object? date = null,
    Object? description = null,
    Object? typeID = null,
    Object? driverID = freezed,
    Object? chefID = freezed,
    Object? clientID = freezed,
    Object? employeeID = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationTypeEnum,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      typeID: null == typeID
          ? _value.typeID
          : typeID // ignore: cast_nullable_to_non_nullable
              as int,
      driverID: freezed == driverID
          ? _value.driverID
          : driverID // ignore: cast_nullable_to_non_nullable
              as String?,
      chefID: freezed == chefID
          ? _value.chefID
          : chefID // ignore: cast_nullable_to_non_nullable
              as String?,
      clientID: freezed == clientID
          ? _value.clientID
          : clientID // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeID: freezed == employeeID
          ? _value.employeeID
          : employeeID // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationImplCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$NotificationImplCopyWith(
          _$NotificationImpl value, $Res Function(_$NotificationImpl) then) =
      __$$NotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @NotificationTypeConverter() NotificationTypeEnum notificationType,
      @DateTimeToIso8601StringConverter() DateTime date,
      String description,
      @JsonKey(name: 'type_ID') int typeID,
      @JsonKey(name: 'driver_ID') String? driverID,
      @JsonKey(name: 'chef_ID') String? chefID,
      @JsonKey(name: 'client_ID') String? clientID,
      @JsonKey(name: 'employee_ID') int? employeeID});
}

/// @nodoc
class __$$NotificationImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$NotificationImpl>
    implements _$$NotificationImplCopyWith<$Res> {
  __$$NotificationImplCopyWithImpl(
      _$NotificationImpl _value, $Res Function(_$NotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? notificationType = null,
    Object? date = null,
    Object? description = null,
    Object? typeID = null,
    Object? driverID = freezed,
    Object? chefID = freezed,
    Object? clientID = freezed,
    Object? employeeID = freezed,
  }) {
    return _then(_$NotificationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as NotificationTypeEnum,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      typeID: null == typeID
          ? _value.typeID
          : typeID // ignore: cast_nullable_to_non_nullable
              as int,
      driverID: freezed == driverID
          ? _value.driverID
          : driverID // ignore: cast_nullable_to_non_nullable
              as String?,
      chefID: freezed == chefID
          ? _value.chefID
          : chefID // ignore: cast_nullable_to_non_nullable
              as String?,
      clientID: freezed == clientID
          ? _value.clientID
          : clientID // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeID: freezed == employeeID
          ? _value.employeeID
          : employeeID // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationImpl implements _Notification {
  const _$NotificationImpl(
      {required this.id,
      @NotificationTypeConverter() required this.notificationType,
      @DateTimeToIso8601StringConverter() required this.date,
      required this.description,
      @JsonKey(name: 'type_ID') required this.typeID,
      @JsonKey(name: 'driver_ID') this.driverID,
      @JsonKey(name: 'chef_ID') this.chefID,
      @JsonKey(name: 'client_ID') this.clientID,
      @JsonKey(name: 'employee_ID') this.employeeID});

  factory _$NotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationImplFromJson(json);

  @override
  final String id;
  @override
  @NotificationTypeConverter()
  final NotificationTypeEnum notificationType;
  @override
  @DateTimeToIso8601StringConverter()
  final DateTime date;
  @override
  final String description;
  @override
  @JsonKey(name: 'type_ID')
  final int typeID;
  @override
  @JsonKey(name: 'driver_ID')
  final String? driverID;
  @override
  @JsonKey(name: 'chef_ID')
  final String? chefID;
  @override
  @JsonKey(name: 'client_ID')
  final String? clientID;
  @override
  @JsonKey(name: 'employee_ID')
  final int? employeeID;

  @override
  String toString() {
    return 'Notification(id: $id, notificationType: $notificationType, date: $date, description: $description, typeID: $typeID, driverID: $driverID, chefID: $chefID, clientID: $clientID, employeeID: $employeeID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.typeID, typeID) || other.typeID == typeID) &&
            (identical(other.driverID, driverID) ||
                other.driverID == driverID) &&
            (identical(other.chefID, chefID) || other.chefID == chefID) &&
            (identical(other.clientID, clientID) ||
                other.clientID == clientID) &&
            (identical(other.employeeID, employeeID) ||
                other.employeeID == employeeID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, notificationType, date,
      description, typeID, driverID, chefID, clientID, employeeID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      __$$NotificationImplCopyWithImpl<_$NotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationImplToJson(
      this,
    );
  }
}

abstract class _Notification implements NotificationS {
  const factory _Notification(
          {required final String id,
          @NotificationTypeConverter()
          required final NotificationTypeEnum notificationType,
          @DateTimeToIso8601StringConverter() required final DateTime date,
          required final String description,
          @JsonKey(name: 'type_ID') required final int typeID,
          @JsonKey(name: 'driver_ID') final String? driverID,
          @JsonKey(name: 'chef_ID') final String? chefID,
          @JsonKey(name: 'client_ID') final String? clientID,
          @JsonKey(name: 'employee_ID') final int? employeeID}) =
      _$NotificationImpl;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$NotificationImpl.fromJson;

  @override
  String get id;
  @override
  @NotificationTypeConverter()
  NotificationTypeEnum get notificationType;
  @override
  @DateTimeToIso8601StringConverter()
  DateTime get date;
  @override
  String get description;
  @override
  @JsonKey(name: 'type_ID')
  int get typeID;
  @override
  @JsonKey(name: 'driver_ID')
  String? get driverID;
  @override
  @JsonKey(name: 'chef_ID')
  String? get chefID;
  @override
  @JsonKey(name: 'client_ID')
  String? get clientID;
  @override
  @JsonKey(name: 'employee_ID')
  int? get employeeID;
  @override
  @JsonKey(ignore: true)
  _$$NotificationImplCopyWith<_$NotificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
