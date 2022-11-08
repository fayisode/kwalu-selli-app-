import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/enviroment_config/auto_router.gr.dart';
import '../../../../core/shared_widget/platform/platform_scaffold.dart';
import '../../../../core/shared_widget/widget/text_form_field.dart';
import '../../../../core/styles/padding.dart';
import '../../../../core/styles/sizing.dart';
import '../../../../core/utils/buttons/primary.dart';
import '../../../../core/utils/extensions/page_ext.dart';
import '../../../../core/utils/extensions/text_ext.dart';

class UserVerifyOtpPage extends StatelessWidget {
  const UserVerifyOtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        bottomNavigation: Container(
          padding: const CEdgeInsects.allMedium(),
          color: Colors.transparent,
          height: kDefaultSizing * 5.5,
          child: PrimaryButton(
            callback: () {
              AutoRouter.of(context).push(
                const UserChangePasswordRoute(),
              );
            },
            title: 'Continue',
            isActive: true,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 16 * 1.5,
            ),
            'Verify Otp'.heading3(),
            const SizedBox(
              height: 16 * 0.25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child:
                  'To change your password, enter the 4 digit pin sent to your email'
                      .smallTextRegular(
                textColor: primaryColor[200],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            CTextFormField(
              showErrorMessage: false, //_showErrorMessage(context),
              label: 'OTP',
              hintText: '****',
              errorMessage: () => null, // _emailErrorMessage(context),
              onChanged: (String input) {},
            ),
          ],
        ).wrapWidgetWithPadding(context),
      );
}
