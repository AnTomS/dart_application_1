import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryproCoinTile extends StatelessWidget {
  const CryproCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/btc_svg.svg',
        width: 35,
        height: 35,
      ),
      title: Text(
        "Bitcoin",
        style: theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        "20000\$",
        style: theme.textTheme.labelSmall,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.pushNamed(context, '/coin', arguments: coinName);
      },
    );
  }
}
