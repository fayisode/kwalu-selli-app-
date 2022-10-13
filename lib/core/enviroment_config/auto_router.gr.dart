// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../main.dart' as _i1;
import '../../modules/auth/presentation/pages/account_creation_success.dart'
    as _i4;
import '../../modules/auth/presentation/pages/user_account_info.dart' as _i2;
import '../../modules/auth/presentation/pages/user_personal_info.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>(
          orElse: () => const MyHomeRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    UserAccountInformationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.UserAccountInformationPage(),
      );
    },
    UserPersonalInformationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserPersonalInformationPage(),
      );
    },
    AccountCreationSuccessRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AccountCreationSuccessPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          MyHomeRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          UserAccountInformationRoute.name,
          path: '/user-account-information-page',
        ),
        _i5.RouteConfig(
          UserPersonalInformationRoute.name,
          path: '/user-personal-information-page',
        ),
        _i5.RouteConfig(
          AccountCreationSuccessRoute.name,
          path: '/account-creation-success-page',
        ),
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i5.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i6.Key? key,
    String title = '',
  }) : super(
          MyHomeRoute.name,
          path: '/',
          args: MyHomeRouteArgs(
            key: key,
            title: title,
          ),
        );

  static const String name = 'MyHomeRoute';
}

class MyHomeRouteArgs {
  const MyHomeRouteArgs({
    this.key,
    this.title = '',
  });

  final _i6.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i2.UserAccountInformationPage]
class UserAccountInformationRoute extends _i5.PageRouteInfo<void> {
  const UserAccountInformationRoute()
      : super(
          UserAccountInformationRoute.name,
          path: '/user-account-information-page',
        );

  static const String name = 'UserAccountInformationRoute';
}

/// generated route for
/// [_i3.UserPersonalInformationPage]
class UserPersonalInformationRoute extends _i5.PageRouteInfo<void> {
  const UserPersonalInformationRoute()
      : super(
          UserPersonalInformationRoute.name,
          path: '/user-personal-information-page',
        );

  static const String name = 'UserPersonalInformationRoute';
}

/// generated route for
/// [_i4.AccountCreationSuccessPage]
class AccountCreationSuccessRoute extends _i5.PageRouteInfo<void> {
  const AccountCreationSuccessRoute()
      : super(
          AccountCreationSuccessRoute.name,
          path: '/account-creation-success-page',
        );

  static const String name = 'AccountCreationSuccessRoute';
}
