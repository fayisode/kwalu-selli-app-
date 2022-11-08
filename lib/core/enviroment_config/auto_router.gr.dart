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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../main.dart' as _i1;
import '../../modules/auth/presentation/pages/account_creation_success.dart'
    as _i4;
import '../../modules/auth/presentation/pages/user_account_info.dart' as _i2;
import '../../modules/auth/presentation/pages/user_change_password.dart' as _i6;
import '../../modules/auth/presentation/pages/user_login_page.dart' as _i5;
import '../../modules/auth/presentation/pages/user_personal_info.dart' as _i3;
import '../../modules/auth/presentation/pages/user_reset_password.dart' as _i8;
import '../../modules/auth/presentation/pages/user_verify_otp.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    MyHomeRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomeRouteArgs>(
          orElse: () => const MyHomeRouteArgs());
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.MyHomePage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    UserAccountInformationRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.UserAccountInformationPage(),
      );
    },
    UserPersonalInformationRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserPersonalInformationPage(),
      );
    },
    AccountCreationSuccessRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AccountCreationSuccessPage(),
      );
    },
    UserLoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.UserLoginPage(),
      );
    },
    UserChangePasswordRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.UserChangePasswordPage(),
      );
    },
    UserVerifyOtpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.UserVerifyOtpPage(),
      );
    },
    UserResetPasswordRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.UserResetPasswordPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          MyHomeRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          UserAccountInformationRoute.name,
          path: '/user-account-information-page',
        ),
        _i9.RouteConfig(
          UserPersonalInformationRoute.name,
          path: '/user-personal-information-page',
        ),
        _i9.RouteConfig(
          AccountCreationSuccessRoute.name,
          path: '/account-creation-success-page',
        ),
        _i9.RouteConfig(
          UserLoginRoute.name,
          path: '/user-login-page',
        ),
        _i9.RouteConfig(
          UserChangePasswordRoute.name,
          path: '/user-change-password-page',
        ),
        _i9.RouteConfig(
          UserVerifyOtpRoute.name,
          path: '/user-verify-otp-page',
        ),
        _i9.RouteConfig(
          UserResetPasswordRoute.name,
          path: '/user-reset-password-page',
        ),
      ];
}

/// generated route for
/// [_i1.MyHomePage]
class MyHomeRoute extends _i9.PageRouteInfo<MyHomeRouteArgs> {
  MyHomeRoute({
    _i10.Key? key,
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

  final _i10.Key? key;

  final String title;

  @override
  String toString() {
    return 'MyHomeRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i2.UserAccountInformationPage]
class UserAccountInformationRoute extends _i9.PageRouteInfo<void> {
  const UserAccountInformationRoute()
      : super(
          UserAccountInformationRoute.name,
          path: '/user-account-information-page',
        );

  static const String name = 'UserAccountInformationRoute';
}

/// generated route for
/// [_i3.UserPersonalInformationPage]
class UserPersonalInformationRoute extends _i9.PageRouteInfo<void> {
  const UserPersonalInformationRoute()
      : super(
          UserPersonalInformationRoute.name,
          path: '/user-personal-information-page',
        );

  static const String name = 'UserPersonalInformationRoute';
}

/// generated route for
/// [_i4.AccountCreationSuccessPage]
class AccountCreationSuccessRoute extends _i9.PageRouteInfo<void> {
  const AccountCreationSuccessRoute()
      : super(
          AccountCreationSuccessRoute.name,
          path: '/account-creation-success-page',
        );

  static const String name = 'AccountCreationSuccessRoute';
}

/// generated route for
/// [_i5.UserLoginPage]
class UserLoginRoute extends _i9.PageRouteInfo<void> {
  const UserLoginRoute()
      : super(
          UserLoginRoute.name,
          path: '/user-login-page',
        );

  static const String name = 'UserLoginRoute';
}

/// generated route for
/// [_i6.UserChangePasswordPage]
class UserChangePasswordRoute extends _i9.PageRouteInfo<void> {
  const UserChangePasswordRoute()
      : super(
          UserChangePasswordRoute.name,
          path: '/user-change-password-page',
        );

  static const String name = 'UserChangePasswordRoute';
}

/// generated route for
/// [_i7.UserVerifyOtpPage]
class UserVerifyOtpRoute extends _i9.PageRouteInfo<void> {
  const UserVerifyOtpRoute()
      : super(
          UserVerifyOtpRoute.name,
          path: '/user-verify-otp-page',
        );

  static const String name = 'UserVerifyOtpRoute';
}

/// generated route for
/// [_i8.UserResetPasswordPage]
class UserResetPasswordRoute extends _i9.PageRouteInfo<void> {
  const UserResetPasswordRoute()
      : super(
          UserResetPasswordRoute.name,
          path: '/user-reset-password-page',
        );

  static const String name = 'UserResetPasswordRoute';
}
