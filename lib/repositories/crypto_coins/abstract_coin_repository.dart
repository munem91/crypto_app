import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';

abstract class AbstractCoinRepositoryNULL {
  Future<List<CryptoCoin>> getCoinsList();

  List<CryptoCoin>? getCoinsListMock() {}
}
