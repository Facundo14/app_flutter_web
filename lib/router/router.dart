import 'package:fluro/fluro.dart';
import 'package:app_bases/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: counterHandler, transitionType: TransitionType.fadeIn);

    //Stateful Routes
    router.define('/stateful', handler: statefulHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base', handler: statefulHandler, transitionType: TransitionType.fadeIn);

    //Provider Routes
    router.define('/provider', handler: providerHandler, transitionType: TransitionType.fadeIn);
    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
    );

    //404
    router.notFoundHandler = pageNotFound;
  }
}
