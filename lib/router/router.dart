import '../features/crypto_coin/view/crypto_coin_screen.dart';
import '../features/crypto_list/view/crypto_list_screen.dart';
import '../repositories/mock/mock.dart';

final routes = {
  '/': (context) => CryptoListScreen(
        repository: CryptoCoinsRepositoryMock(),
      ),
  '/coin': (context) => const CryptoCoinScreen(),
};
