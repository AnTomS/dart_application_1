import 'package:dart_application_1/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../repositories/crypto_coins/crypto_coins.dart';
import '../widgets/widgets.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({
    super.key,
  });

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  final _cryptoListBloc = CryptoListBloc(
    GetIt.I<AbstactCoinsRepository>(),
  );

  @override
  void initState() {
    super.initState();

    _cryptoListBloc.add(LoadCryptoListEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CryptoCurrenciesList"),
      ),
      body: BlocBuilder<CryptoListBloc, CryptoListState>(
        bloc: _cryptoListBloc,
        builder: (context, state) {
          if (state is CryptoListLoaded) {
            return ListView.separated(
              padding: const EdgeInsets.only(top: 16),
              itemCount: state.coinsList.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final coin = state.coinsList[i];
                debugPrint(coin.name);
                return CryproCoinTile(coin: coin);
              },
            );
          }
          if (state is CryptoListLoadingFailure) {
            return const Center(
              child: Text(
                  "Something went wrong. Возможно у тебя нет интернета или закончились запросы для апи)"),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),

      // (_cryptoCoinsList == null)
      //     ? const Center(
      //         child: CircularProgressIndicator(),
      //       )
      //     : ListView.separated(
      //         padding: const EdgeInsets.only(top: 16),
      //         itemCount: _cryptoCoinsList!.length,
      //         separatorBuilder: (context, index) => const Divider(),
      //         itemBuilder: (context, i) {
      //           final coin = _cryptoCoinsList![i];
      //           debugPrint(coin.name);
      //           return CryproCoinTile(coin: coin);
      //         },
      //       ),
    );
  }
}
