import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    // Stateful Routes
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);

    // Provider Routes
    router.define('/provider',
        handler: counterProviderHandler, transitionType: TransitionType.fadeIn);
    router.define('/dashboard/users/:userid/:roleid',
        handler: userDashboardHandler, transitionType: TransitionType.fadeIn);

    // 404 - Not Found Page
    router.notFoundHandler = pageNotFound;
  }
}
