// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_coin_details.g.dart';

@JsonSerializable()
class CryptoCoinDetail extends Equatable {
  const CryptoCoinDetail({
    required this.priceInUSD,
    required this.imageUrl,
    required this.toSymbol,
    required this.hight24Hour,
    required this.low24Hours,
  });

  @JsonKey(name: 'TOSYMBOL')
  final String toSymbol;

  // HIGH24HOUR
  @JsonKey(name: 'HIGH24HOUR')
  final double hight24Hour;

  // LOW24HOUR
  @JsonKey(name: 'LOW24HOUR')
  final double low24Hours;

  @JsonKey(name: 'PRICE')
  final double priceInUSD;

  @JsonKey(name: 'IMAGEURL')
  final String imageUrl;

  String get fullImageUrl => 'https://www.cryptocompare.com/$imageUrl';

  /// factory.
  factory CryptoCoinDetail.fromJson(Map<String, dynamic> json) =>
      _$CryptoCoinDetailFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoCoinDetailToJson(this);

  @override
  List<Object> get props => [
        toSymbol,
        hight24Hour,
        low24Hours,
        priceInUSD,
        imageUrl,
      ];
}
