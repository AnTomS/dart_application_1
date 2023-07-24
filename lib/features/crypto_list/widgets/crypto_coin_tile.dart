import 'package:dart_application_1/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryproCoinTile extends StatelessWidget {
  const CryproCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "${coin.priceInUSD} \$",
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/coin', arguments: coin);
      },
    );
  }
}