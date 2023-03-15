import 'package:auto_route/auto_route.dart';
import 'package:banking_app/constant/route/route_path.dart';
import 'package:banking_app/view/top/top_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: RoutePath.appRouteTop,
      page: TopPage,
      initial: true,
    ),
  ],
)
// extend the generated private router
class $AppRouter {}
