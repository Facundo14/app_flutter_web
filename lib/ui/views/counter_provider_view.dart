import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_bases/provider/counter.dart';

import 'package:app_bases/ui/shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  final String base;
  const CounterProviderView({Key? key, required this.base}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(base),
      child: const _CounterProviderPageBody(),
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  const _CounterProviderPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Contador Provider',
          style: TextStyle(fontSize: size.width * 0.03),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Contador : ${counterProvider.counter}',
              style: TextStyle(fontSize: size.width * 0.07, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar',
              onPress: () => counterProvider.increment(),
            ),
            CustomFlatButton(
              text: 'Decrementar',
              onPress: () => counterProvider.decrement(),
            ),
            CustomFlatButton(
              text: 'Puesta a Cero',
              onPress: () => counterProvider.toCero(),
            ),
          ],
        ),
      ],
    );
  }
}
