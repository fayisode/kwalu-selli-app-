import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kwalu_selli/modules/auth/presentation/widgets/user_change_password_form_element.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/shared_widget/platform/platform_scaffold.dart';
import '../../../../core/shared_widget/widget/custom_bottom_nav.dart';
import '../../../../core/utils/extensions/page_ext.dart';
import '../../../../core/utils/extensions/text_ext.dart';
import '../manager/bloc/password_reset_bloc.dart';

class UserChangePasswordPlatformScaffold extends StatelessWidget {
  const UserChangePasswordPlatformScaffold({
    required this.scaffoldKey,
    Key? key,
  }) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) => PlatformScaffold(
        key: scaffoldKey,
        bottomNavigation: CustomBottomNav(
          callback: () {
            context
                .read<PasswordResetBloc>()
                .add(const PasswordResetEvent.changedPasswordUsed());
          },
          title: 'Change Password',
        ).wrapBottomNavigation(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 16 * 1.5,
            ),
            'Change Password'.heading3(),
            const SizedBox(
              height: 16 * 0.25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: 'To change your password, choose a new password'
                  .smallTextRegular(
                textColor: primaryColor[200],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const UserChangePasswordFormElement(),
          ],
        ).wrapWidgetWithPadding(context),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<GlobalKey<ScaffoldState>>(
        'scaffoldKey', scaffoldKey));
  }
}
