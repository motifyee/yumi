import 'package:common_code/core/failures.dart';
import 'package:common_code/core/use_cases.dart';
import 'package:fpdart/fpdart.dart';
import 'package:yumi/domain/basket/entity/basket.dart';

class UpdatePickUpBasket extends UseCase<Basket, UpdatePickUpBasketParams> {
  @override
  Future<Either<Failure, Basket>> call(UpdatePickUpBasketParams params) async {
    return Right(params.basket.copyWith(isDelivery: false, isPickup: true));
  }
}

class UpdatePickUpBasketParams extends Params {
  final Basket basket;

  UpdatePickUpBasketParams({required this.basket});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
