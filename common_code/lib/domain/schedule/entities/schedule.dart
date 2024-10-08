// ignore_for_file: invalid_annotation_target

import 'package:common_code/common_code.dart';
import 'package:flutter/material.dart';
import 'package:dependencies/dependencies.dart';
import 'package:common_code/domain/schedule/entities/converters.dart';
import 'package:common_code/domain/schedule/entities/extensions.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    @Default('') String id,
    @Default('') String userID,
    //
    @JsonKey(name: 'saturday_Active') bool? saturdayActive,
    @TimeOfDayConverter()
    @JsonKey(name: 'saturday_Start')
    TimeOfDay? saturdayStart,
    //
    @TimeOfDayConverter() @JsonKey(name: 'saturday_End') TimeOfDay? saturdayEnd,
    @JsonKey(name: 'sunday_Active') bool? sundayActive,
    @TimeOfDayConverter() @JsonKey(name: 'sunday_Start') TimeOfDay? sundayStart,
    @TimeOfDayConverter() @JsonKey(name: 'sunday_End') TimeOfDay? sundayEnd,
    //
    @JsonKey(name: 'monday_Active') bool? mondayActive,
    @TimeOfDayConverter() @JsonKey(name: 'monday_Start') TimeOfDay? mondayStart,
    @TimeOfDayConverter() @JsonKey(name: 'monday_End') TimeOfDay? mondayEnd,
    //
    @JsonKey(name: 'tuesday_Active') bool? tuesdayActive,
    @TimeOfDayConverter()
    @JsonKey(name: 'tuesday_Start')
    TimeOfDay? tuesdayStart,
    @TimeOfDayConverter() @JsonKey(name: 'tuesday_End') TimeOfDay? tuesdayEnd,
    //
    @JsonKey(name: 'wednesday_Active') bool? wednesdayActive,
    @TimeOfDayConverter()
    @JsonKey(name: 'wednesday_Start')
    TimeOfDay? wednesdayStart,
    @TimeOfDayConverter()
    @JsonKey(name: 'wednesday_End')
    TimeOfDay? wednesdayEnd,
    //
    @JsonKey(name: 'thursday_Active') bool? thursdayActive,
    @TimeOfDayConverter()
    @JsonKey(name: 'thursday_Start')
    TimeOfDay? thursdayStart,
    @TimeOfDayConverter() @JsonKey(name: 'thursday_End') TimeOfDay? thursdayEnd,
    //
    @JsonKey(name: 'friday_Active') bool? fridayActive,
    @TimeOfDayConverter() @JsonKey(name: 'friday_Start') TimeOfDay? fridayStart,
    @TimeOfDayConverter() @JsonKey(name: 'friday_End') TimeOfDay? fridayEnd,
  }) = ScheduleData;

  const Schedule._();

  ScheduleDay scheduleDay(ScheduleWeekDay day, [dynamic json]) {
    dynamic json0 = json ?? toJson();

    return ScheduleDay(
      name: day,
      active: json0['${day.name}_Active'],
      start: (json0['${day.name}_Start'] as String?)?.toTimeOfDay,
      end: (json0['${day.name}_End'] as String?)?.toTimeOfDay,
    );
  }

  List<ScheduleDay> get scheduleDays {
    var json = toJson();

    return ScheduleWeekDay.values.map((day) => scheduleDay(day, json)).toList();
  }

  bool get hasScheduledDays =>
      scheduleDays.any((element) => element.active ?? false);

  List<ScheduleDay> get activeDays =>
      scheduleDays.where((element) => element.active ?? false).toList();

  bool get validSchedule => activeDays.length >= 2;

  bool get uiValid =>
      scheduleDays.every((day) => day.uiValid) &&
      scheduleDays.any((day) => day.active ?? false);

  bool isDifferent(Schedule schedule) => this == schedule;

  Schedule copyWithScheduleDay(ScheduleDay scheduleDay) {
    var json = toJson();

    String day = scheduleDay.name?.name ?? '';
    if (day.isEmpty) return this;

    json['${day}_Active'] = scheduleDay.active;
    json['${day}_Start'] = scheduleDay.start?.toFormattedString;
    json['${day}_End'] = scheduleDay.end?.toFormattedString;

    return Schedule.fromJson(json);
  }

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class ScheduleDay with _$ScheduleDay {
  const factory ScheduleDay({
    ScheduleWeekDay? name,
    bool? active,
    TimeOfDay? start,
    TimeOfDay? end,
  }) = _scheduleDayInit;

  const ScheduleDay._();

  TimeOfDay? get activeTime => end?.difference(start);
  bool get valid => (activeTime?.hour ?? 0) >= 2;
  bool get uiValid => !((active ?? false) && !valid);
}

enum ScheduleWeekDay {
  @JsonValue('sunday')
  sunday,
  @JsonValue('monday')
  monday,
  @JsonValue('tuesday')
  tuesday,
  @JsonValue('wednesday')
  wednesday,
  @JsonValue('thursday')
  thursday,
  @JsonValue('friday')
  friday,
  @JsonValue('saturday')
  saturday,
}
