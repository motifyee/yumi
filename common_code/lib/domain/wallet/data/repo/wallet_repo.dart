import 'package:fpdart/fpdart.dart';
import 'package:common_code/core/failures.dart';
import 'package:common_code/domain/wallet/entity/wallet.dart';

abstract class WalletRepo {
  TaskEither<Failure, Wallet> getWallet();
}
