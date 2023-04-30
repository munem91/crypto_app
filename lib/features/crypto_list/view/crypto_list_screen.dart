import 'package:crypto_app/repositories/mock/mock_crypto_coins_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:crypto_app/features/crypto_list/widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({
    super.key,
  });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? coins;
  //  _cryptoCoinsList;

  @override
  void initState() {
    super.initState();

    // CryptoCoinsRepositoryMock coinsMock;
    // coinsMock = CryptoCoinsRepositoryMock();
    // List<CryptoCoin> coins = coinsMock.getCoinsListMock();

    coins = CryptoCoinsRepositoryMock().getCoinsListMock();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
      ),
      body: (coins == null)
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: const EdgeInsets.only(top: 16.0),
              itemCount: coins!.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final coin = coins![i];
                return CryptoCoinTile(coin: coin);
              }),
    );
  }

  // Future<void> rggfgf
  // async {
  // _cryptoCoinsList = await CryptoCoinsRepositiry(dio: Dio()).getCoinsList();
  // setState(() {});
  // }
// }
}
