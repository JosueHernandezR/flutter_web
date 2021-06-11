import 'package:fluro/fluro.dart';
import 'package:landing_page_example/ui/pages/home_page.dart';

final homeHandler = new Handler(handlerFunc: (context, params) {
  return HomePage();
});
