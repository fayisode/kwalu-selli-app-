import 'package:auto_route/annotations.dart';
import 'package:kwalu_selli/main.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: _routes,
)
class $AppRouter {}

const List<AutoRoute> _routes = <AutoRoute>[
  AutoRoute(
    page: MyHomePage,
    initial: true,
  )
];
