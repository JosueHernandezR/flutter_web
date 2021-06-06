import 'package:bases_web/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: _counterHandler,
    );
  }

  // Handlers
  static Handler _counterHandler = Handler(
    handlerFunc: (context, params) => CounterView(),
  );
}
