import 'package:common_code/common_code.dart';
import 'package:fpdart/fpdart.dart';
import 'package:common_code/domain/schedule/entities/schedule.dart';

/// applies start and end times of [day] to active days
class ApplyToActiveDays extends UseCase<Schedule, ApplyToActiveDaysParams> {
  @override
  Future<Either<Failure, Schedule>> call(params) async {
    var schedule = params.schedule;

    for (final day in params.schedule.activeDays) {
      schedule = schedule.copyWithScheduleDay(
        day.copyWith(
          start: params.day.start,
          end: params.day.end,
        ),
      );
    }

    return Right(schedule);
  }
}

class ApplyToActiveDaysParams extends Params {
  final ScheduleDay day;
  final Schedule schedule;

  ApplyToActiveDaysParams(this.day, this.schedule);

  @override
  List<Object?> get props => [day, schedule];
}
