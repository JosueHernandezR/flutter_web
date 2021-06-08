// Handlers
import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';
import 'package:fluro/fluro.dart';

final counterHandler = Handler(
  handlerFunc: (context, params) {
    return CounterView(base: params['base']?[0] ?? '5');
  },
);
final counterProviderHandler = Handler(
  handlerFunc: (context, params) {
    return CounterProviderView(base: params['q']?[0] ?? '10');
  },
);

final userDashboardHandler = Handler(
  handlerFunc: (context, params) {
    print(params);
    return View404();
  },
);

final pageNotFound = Handler(
  handlerFunc: (_, __) => View404(),
);
