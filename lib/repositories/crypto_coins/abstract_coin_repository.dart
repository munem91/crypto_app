import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';

abstract class AbstractCoinRepository {
  Future<List<CryptoCoin>> getCoinsList();
}
