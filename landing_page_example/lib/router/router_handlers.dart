import 'package:fluro/fluro.dart';
import 'package:landing_page_example/providers/page_provider.dart';
import 'package:landing_page_example/ui/pages/home_page.dart';
import 'package:provider/provider.dart';

final homeHandler = new Handler(
  handlerFunc: (context, params) {
    final page = params['page']!.first;

    if (page != '/') {
      final pageProvider = Provider.of<PageProvider>(context!, listen: false);
      pageProvider.createScrollController(page);

      return HomePage();
    }
  },
);
