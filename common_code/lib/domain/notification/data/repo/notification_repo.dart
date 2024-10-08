import 'package:common_code/common_code.dart';
import 'package:fpdart/fpdart.dart';
import 'package:common_code/domain/notification/entity/notification.dart';

abstract class NotificationRepo {
  TaskEither<Failure, PaginatedData<NotificationS>> loadNotification(
      {required PaginatedData<NotificationS> pagination});
}
