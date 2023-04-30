import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';

import 'abstract_coin_repository.dart';

class CryptoCoinsRepositoryMockTwo implements AbstractCoinRepository {
  @override
  List<CryptoCoin> getCoinsListMock() {
    final List<CryptoCoin> coins = [];

    final bnb = CryptoCoin(
      name: 'bnb',
      imageUrl:
          'https://w7.pngwing.com/pngs/1007/775/png-transparent-bnb-cryptocurrencies-icon-thumbnail.png',
      priceInUSD: 2.0,
    );
    coins.add(bnb);

    final yes = CryptoCoin(
      name: 'yes',
      imageUrl:
          'https://w7.pngwing.com/pngs/1007/775/png-transparent-bnb-cryptocurrencies-icon-thumbnail.png',
      priceInUSD: 3.0,
    );
    coins.add(yes);
    return coins;
  }
}
