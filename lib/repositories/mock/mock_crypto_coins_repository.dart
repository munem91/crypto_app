import 'dart:ffi';

import 'package:crypto_app/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

import 'abstract_coin_repository.dart';

class CryptoCoinsRepositoryMock implements AbstractCoinRepository {
  @override
  List<CryptoCoin> getCoinsListMock() {
    final List<CryptoCoin> listCoins = [];

    final cryptoCoinUSDT = CryptoCoin(
      name: 'USDT',
      imageUrl:
          'https://www.spectre.ai/assets/images/assets/ETH-logo.png?v=2.13',
      priceInUSD: 1.0,
    );
    listCoins.add(cryptoCoinUSDT);
    final cryptoCoinETH = CryptoCoin(
      name: 'ETH',
      imageUrl:
          'https://www.spectre.ai/assets/images/assets/ETH-logo.png?v=2.13',
      priceInUSD: 2.0,
    );
    listCoins.add(cryptoCoinETH);
    final cryptoCoinBTC = CryptoCoin(
      name: 'BTC',
      imageUrl:
          'https://www.spectre.ai/assets/images/assets/ETH-logo.png?v=2.13',
      priceInUSD: 3.0,
    );
    listCoins.add(cryptoCoinBTC);

    return listCoins;

    // return [cryptoCoinUSDT, cryptoCoinETH, cryptoCoinBTC];
  }
}
