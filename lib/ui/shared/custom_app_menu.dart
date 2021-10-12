import 'package:flutter/material.dart';
import 'package:app_bases/locator.dart';
import 'package:app_bases/services/navigation_service.dart';
import 'package:app_bases/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) => (constraints.maxWidth > 520) ? _TabletDesktopMenu() : _MobileMenu(),
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01, vertical: size.width * 0.01),
      width: size.width,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'StateFul Contador',
            // onPress: () => Navigator.pushNamed(context, '/stateful'),
            onPress: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: size.width * 0.01),
          CustomFlatButton(
            text: 'Provider Contador',
            onPress: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(width: size.width * 0.01),
          CustomFlatButton(
            text: 'Otra Página',
            onPress: () => locator<NavigationService>().navigateTo('/123456456'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.01, vertical: size.width * 0.01),
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'StateFul Contador',
            // onPress: () => Navigator.pushNamed(context, '/stateful'),
            onPress: () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: size.width * 0.01),
          CustomFlatButton(
            text: 'Provider Contador',
            onPress: () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(width: size.width * 0.01),
          CustomFlatButton(
            text: 'Otra Página',
            onPress: () => locator<NavigationService>().navigateTo('/123456456'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
