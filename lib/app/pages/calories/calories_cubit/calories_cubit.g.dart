// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calories_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaloriesStateImpl _$$CaloriesStateImplFromJson(Map<String, dynamic> json) =>
    _$CaloriesStateImpl(
      calories: json['calories'] == null
          ? const PaginatedData()
          : PaginatedData<Calorie>.fromJson(
              json['calories'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaloriesStateImplToJson(_$CaloriesStateImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
    };
