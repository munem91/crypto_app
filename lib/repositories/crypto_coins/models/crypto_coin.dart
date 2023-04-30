import 'dart:ffi';

class CryptoCoin {
  CryptoCoin({
    required this.imageUrl,
    required this.name,
    required this.priceInUSD,
  });

  final String imageUrl;
  final String name;
  final double priceInUSD;
}
