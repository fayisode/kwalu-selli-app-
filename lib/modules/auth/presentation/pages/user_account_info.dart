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

class UserAccountInformationPage extends StatelessWidget {
  const UserAccountInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        bottomNavigation: Container(
          padding: const CEdgeInsects.allMedium(),
          color: Colors.transparent,
          height: kDefaultSizing * 5.5,
          child: PrimaryButton(
            callback: () {
              AutoRouter.of(context).push(
                const UserPersonalInformationRoute(),
              );
            },
            title: 'Continue',
            isActive: true,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 16 * 1.5,
            ),
            'Sign Up'.heading3(),
            const SizedBox(
              height: 16 * 0.25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child:
                  'Fill in the following information to create KwaluSelli account'
                      .smallTextRegular(
                textColor: primaryColor[200],
              ),
            ),
            const SizedBox(
              height: 16 * 1.25,
            ),
            CTextFormField(
              label: 'Email',
              hintText: 'e.g test@test.com',
              errorMessage: () => null,
            ),
            CTextFormField(
              label: 'Phone Number',
              hintText: 'e.g 76678865',
              errorMessage: () => null,
            ),
            CTextFormField(
              label: 'Password',
              hintText: 'e.g *********',
              errorMessage: () => null,
            ),
          ],
        ).wrapWidgetWithPadding(context),
      );
}
