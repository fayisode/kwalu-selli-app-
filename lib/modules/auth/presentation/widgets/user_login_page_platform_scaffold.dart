import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kwalu_selli/modules/auth/presentation/widgets/user_login_page_bottom_nav.dart';
import 'package:kwalu_selli/modules/auth/presentation/widgets/user_login_page_form_element.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/enviroment_config/auto_router.gr.dart';
import '../../../../core/shared_widget/platform/platform_scaffold.dart';
import '../../../../core/utils/buttons/buttons.dart';
import '../../../../core/utils/extensions/page_ext.dart';
import '../../../../core/utils/extensions/text_ext.dart';

class UserLoginPagePlatformScaffold extends StatelessWidget {
  const UserLoginPagePlatformScaffold({
    required this.scaffoldKey,
    Key? key,
    // this.dialogContext,
  }) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;
  // final BuildContext? dialogContext;
  @override
  Widget build(BuildContext context) => PlatformScaffold(
      key: scaffoldKey,
      bottomNavigation:
          const UserLoginPageBottomNav().wrapBottomNavigation(context),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 16 * 1.5,
            ),
            'Sign In'.heading3(),
            const SizedBox(
              height: 16 * 0.25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child:
                  'Fill in the following information to sign in to KwaluSelli'
                      .smallTextRegular(
                textColor: primaryColor[200],
              ),
            ),
            const SizedBox(
              height: 16 * 1.25,
            ),
            const UserLoginFormElement(),
            const SizedBox(
              height: 16 * 1.25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                ElementaryButton(
                  callback: () {
                    AutoRouter.of(context).push(
                      const UserResetPasswordRoute(),
                    );
                  },
                  title: 'Forget Password',
                  isActive: true,
                ),
              ],
            )
          ],
        ).wrapWidgetWithPadding(context),
      ));
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<GlobalKey<ScaffoldState>>(
        'scaffoldKey', scaffoldKey));
  }
}
