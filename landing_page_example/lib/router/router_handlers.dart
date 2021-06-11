import 'package:fluro/fluro.dart';
import 'package:landing_page_example/ui/pages/home_page.dart';

final homeHandler = new Handler(
  handlerFunc: (context, params) {
    print(params);
    final page = params['page']!.first;

    if (page != '/') return HomePage();
  },
);
