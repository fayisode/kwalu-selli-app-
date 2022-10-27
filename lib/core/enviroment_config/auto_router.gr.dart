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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../main.dart' as _i1;
import '../../modules/auth/presentation/pages/account_creation_success.dart'
    as _i4;
import '../../modules/auth/presentation/pages/user_account_info.dart' as _i2;
import '../../modules/auth/presentation/pages/user_login_page.dart' as _i5;
import '../../modules/auth/presentation/pages/user_personal_info.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>(
          orElse: () => const MyHomeRouteArgs());
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    UserAccountInformationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.UserAccountInformationPage(),
      );
    },
    UserPersonalInformationRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserPersonalInformationPage(),
      );
    },
    AccountCreationSuccessRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AccountCreationSuccessPage(),
      );
    },
    UserLoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.UserLoginPage(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          MyHomeRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          UserAccountInformationRoute.name,
          path: '/user-account-information-page',
        ),
        _i6.RouteConfig(
          UserPersonalInformationRoute.name,
          path: '/user-personal-information-page',
        ),
        _i6.RouteConfig(
          AccountCreationSuccessRoute.name,
          path: '/account-creation-success-page',
        ),
        _i6.RouteConfig(
          UserLoginRoute.name,
          path: '/user-login-page',
        ),
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i6.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i7.Key? key,
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

  final _i7.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i2.UserAccountInformationPage]
class UserAccountInformationRoute extends _i6.PageRouteInfo<void> {
  const UserAccountInformationRoute()
      : super(
          UserAccountInformationRoute.name,
          path: '/user-account-information-page',
        );

  static const String name = 'UserAccountInformationRoute';
}

/// generated route for
/// [_i3.UserPersonalInformationPage]
class UserPersonalInformationRoute extends _i6.PageRouteInfo<void> {
  const UserPersonalInformationRoute()
      : super(
          UserPersonalInformationRoute.name,
          path: '/user-personal-information-page',
        );

  static const String name = 'UserPersonalInformationRoute';
}

/// generated route for
/// [_i4.AccountCreationSuccessPage]
class AccountCreationSuccessRoute extends _i6.PageRouteInfo<void> {
  const AccountCreationSuccessRoute()
      : super(
          AccountCreationSuccessRoute.name,
          path: '/account-creation-success-page',
        );

  static const String name = 'AccountCreationSuccessRoute';
}

/// generated route for
/// [_i5.UserLoginPage]
class UserLoginRoute extends _i6.PageRouteInfo<void> {
  const UserLoginRoute()
      : super(
          UserLoginRoute.name,
          path: '/user-login-page',
        );

  static const String name = 'UserLoginRoute';
}
