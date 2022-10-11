import 'package:flutter/material.dart';

import '../../enviroment_config/auto_router.gr.dart';
import 'light_theme.dart';

class PlatformPage extends StatelessWidget {
  const PlatformPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldKey =
        GlobalKey<ScaffoldMessengerState>();
    final AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldKey,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      theme: flexThemeLight,
      darkTheme: flexThemeLight,
    );
  }
}
