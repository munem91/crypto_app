import 'package:crypto_app/repositories/crypto_coins/crypto_coins.dart';

abstract class AbstractCoinRepositoryMock {
  List<CryptoCoin> getCoinsListMock();
}
