import 'package:app_bases/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('404', style: TextStyle(fontSize: size.width * 0.1, fontWeight: FontWeight.bold)),
            Text('No se encontró la página', style: TextStyle(fontSize: size.width * 0.05, fontWeight: FontWeight.bold)),
            CustomFlatButton(text: 'Regresar', onPress: () => Navigator.pushReplacementNamed(context, '/stateful')),
          ],
        ),
      ),
    );
  }
}
