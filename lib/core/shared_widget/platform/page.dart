import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../modules/auth/presentation/manager/bloc/login_bloc.dart';
import '../../../modules/auth/presentation/manager/bloc/register_bloc.dart';
import '../../enviroment_config/auto_router.gr.dart';
import '../../enviroment_config/injection.dart';
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
    return MultiBlocProvider(
      providers: <BlocProvider<Object?>>[
        BlocProvider<RegisterBloc>(
          create: (BuildContext context) => getIt<RegisterBloc>(),
        ),
        BlocProvider<LoginBloc>(
          create: (BuildContext context) => getIt<LoginBloc>(),
        ),
      ],
      child: MaterialApp.router(
        scaffoldMessengerKey: scaffoldKey,
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        theme: flexThemeLight,
        darkTheme: flexThemeLight,
      ),
    );
  }
}
