import 'package:app_bases/ui/shared/custom_app_menu.dart';
import 'package:app_bases/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          Text(
            'Contador Stateful',
            style: TextStyle(fontSize: size.width * 0.03),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'Contador : $counter',
                style: TextStyle(fontSize: size.width * 0.1, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar',
                onPress: () {
                  setState(() {
                    counter++;
                  });
                },
              ),
              CustomFlatButton(
                text: 'Decrementar',
                onPress: () {
                  setState(() {
                    counter--;
                  });
                },
              ),
              CustomFlatButton(
                text: 'Puesta a Cero',
                onPress: () {
                  setState(() {
                    counter = 0;
                  });
                },
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
