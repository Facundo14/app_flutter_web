import 'package:app_bases/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('404', style: TextStyle(fontSize: size.width * 0.06, fontWeight: FontWeight.bold)),
          Text('No se encontró la página', style: TextStyle(fontSize: size.width * 0.04, fontWeight: FontWeight.bold)),
          CustomFlatButton(text: 'Regresar', onPress: () => Navigator.pushReplacementNamed(context, '/stateful')),
        ],
      ),
    );
  }
}
