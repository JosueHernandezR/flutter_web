import 'package:fluro/fluro.dart';
import 'package:landing_page_example/router/router_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();
  static void configureRoutes() {
    // Rutas
    router.define('/:page', handler: homeHandler);

    // 404
    router.notFoundHandler = homeHandler;
  }
}
