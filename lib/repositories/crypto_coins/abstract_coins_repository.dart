import 'package:dart_application_1/repositories/crypto_coins/crypto_coins.dart';

abstract class AbstactCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
  Future<CryptoCoin> getCoinDetails(String currencyCode);
}
