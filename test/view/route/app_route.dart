import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/view/atm_map/atm_map_page.dart';
import 'package:banking_app/view/login/login_page.dart';
import 'package:banking_app/view/top/top_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: RoutePath.topRoute,
      page: TopPage,
    ),
    AutoRoute(
      path: RoutePath.loginRoute,
      page: LoginPage,
      initial: true,
    ),
    AutoRoute(
      path: RoutePath.atmMapRoute,
      page: AtmMapPage,
    )
  ],
)
// extend the generated private router
class $AppRouter {}
