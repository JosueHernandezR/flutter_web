import 'package:flutter/material.dart';
import 'package:landing_page_example/ui/shared/custom_app_menu.dart';
import 'package:landing_page_example/ui/views/about_view.dart';
import 'package:landing_page_example/ui/views/contact_view.dart';
import 'package:landing_page_example/ui/views/home_view.dart';
import 'package:landing_page_example/ui/views/location_view.dart';
import 'package:landing_page_example/ui/views/pricing_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            _HomeBody(),
            Positioned(
              right: 20,
              top: 20,
              child: CustomAppMenu(),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.pink,
            Colors.green,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5,
            0.5,
          ],
        ),
      );
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          HomeView(),
          AboutView(),
          PricingView(),
          ContactView(),
          LocationView(),
        ],
      ),
    );
  }
}
