// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../crypto_coins.dart';

class CryptoCoinDetail extends CryptoCoin {
  CryptoCoinDetail({
    required super.name,
    required super.priceInUSD,
    required super.imageUrl,
    required this.toSymbol,
    required this.hight24Hour,
    required this.low24Hours,
  });

  // TOSYMBOL
  final String toSymbol;

  // HIGH24HOUR
  final double hight24Hour;

  // LOW24HOUR
  final double low24Hours;

  @override
  List<Object> get props => super.props
    ..addAll([
      toSymbol,
      hight24Hour,
      low24Hours,
    ]);
}
