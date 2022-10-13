import 'package:auto_route/annotations.dart';
import 'package:kwalu_selli/main.dart';
import 'package:kwalu_selli/modules/auth/presentation/pages/account_creation_success.dart';
import 'package:kwalu_selli/modules/auth/presentation/pages/user_account_info.dart';
import 'package:kwalu_selli/modules/auth/presentation/pages/user_personal_info.dart';

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
  )
];
