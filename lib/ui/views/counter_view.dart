import 'package:app_bases/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final String base;
  const CounterView({Key? key, required this.base}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;
  @override
  void initState() {
    if (int.tryParse(widget.base) != null) {
      counter = int.parse(widget.base);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
              style: TextStyle(fontSize: size.width * 0.07, fontWeight: FontWeight.bold),
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
      ],
    );
  }
}
