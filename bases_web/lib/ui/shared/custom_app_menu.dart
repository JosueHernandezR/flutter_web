import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  //const CustomAppMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (_, BoxConstraints constraints) =>
            (constraints.maxWidth > 520) ? _TableDesktopMenu() : _MobileMenu());
  }
}

class _TableDesktopMenu extends StatelessWidget {
  // const _TableDesktopMenu({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador con provider',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra página',
            // onPressed: () => Navigator.pushNamed(context, '/prueba'),
            onPressed: () => locator<NavigationService>().navigateTo('/prueba'),
            color: Colors.black,
          ),
          CustomFlatButton(
            text: 'Stateful 100',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful/100'),
            color: Colors.black,
          ),
          CustomFlatButton(
            text: 'Provider 200',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider?q=200'),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  // const _TableDesktopMenu({
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            // onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),

            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador con provider',
            // onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),

            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra página',
            // onPressed: () => Navigator.pushNamed(context, '/prueba'),
            onPressed: () => locator<NavigationService>().navigateTo('/prueba'),

            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
