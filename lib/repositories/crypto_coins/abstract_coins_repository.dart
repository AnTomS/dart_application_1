import 'package:dart_application_1/repositories/crypto_coins/models/crypto_coin.dart';

abstract class AbstactCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
  Future<CryptoCoin> getCoinDetails(String currencyCode);
}
