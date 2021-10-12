import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_bases/provider/counter.dart';

import 'package:app_bases/ui/shared/custom_app_menu.dart';
import 'package:app_bases/ui/shared/custom_flat_button.dart';

class CounterProviderPage extends StatelessWidget {
  const CounterProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider('5'),
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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          Text(
            'Contador Provider',
            style: TextStyle(fontSize: size.width * 0.03),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Contador : ${counterProvider.counter}',
                style: TextStyle(fontSize: size.width * 0.1, fontWeight: FontWeight.bold),
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
          const Spacer(),
        ],
      ),
    );
  }
}
