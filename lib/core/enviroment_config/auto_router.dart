import 'package:auto_route/annotations.dart';
import 'package:kwalu_selli/main.dart';
import 'package:kwalu_selli/modules/auth/presentation/pages/account_creation_success.dart';
import 'package:kwalu_selli/modules/auth/presentation/pages/user_account_info.dart';
import 'package:kwalu_selli/modules/auth/presentation/pages/user_personal_info.dart';

import '../../modules/auth/presentation/pages/user_change_password.dart';
import '../../modules/auth/presentation/pages/user_login_page.dart';
import '../../modules/auth/presentation/pages/user_reset_password.dart';
import '../../modules/auth/presentation/pages/user_verify_otp.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: _routes,
)
class $AppRouter {}

const List<AutoRoute> _routes = <AutoRoute>[
  AutoRoute<dynamic>(
    page: MyHomePage,
    initial: true,
  ),
  AutoRoute<dynamic>(
    page: UserAccountInformationPage,
  ),
  AutoRoute<dynamic>(
    page: UserPersonalInformationPage,
  ),
  AutoRoute<dynamic>(
    page: AccountCreationSuccessPage,
  ),
  AutoRoute<dynamic>(
    page: UserLoginPage,
  ),
  AutoRoute<dynamic>(
    page: UserChangePasswordPage,
  ),
  AutoRoute<dynamic>(
    page: UserVerifyOtpPage,
  ),
  AutoRoute<dynamic>(
    page: UserResetPasswordPage,
  ),
];
