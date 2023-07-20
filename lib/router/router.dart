import 'package:dart_application_1/features/crypto_coin/crypto_coin.dart';
import 'package:dart_application_1/features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};
