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

class UserPersonalInformationPage extends StatelessWidget {
  const UserPersonalInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        bottomNavigation: Container(
          padding: const CEdgeInsects.allMedium(),
          color: Colors.transparent,
          height: kDefaultSizing * 5.5,
          child: PrimaryButton(
            callback: () {
              AutoRouter.of(context).push(
                const AccountCreationSuccessRoute(),
              );
            },
            title: 'Finish',
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
            'Continue Sign Up'.heading3(),
            const SizedBox(
              height: 16 * 0.25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child:
                  'Continue with KwaluSelli account creation by filling the information below'
                      .smallTextRegular(
                textColor: primaryColor[200],
              ),
            ),
            const SizedBox(
              height: 16 * 1.25,
            ),
            CTextFormField(
              label: 'First Name',
              hintText: 'e.g John',
              errorMessage: () => null,
            ),
            CTextFormField(
              label: 'Last Name',
              hintText: 'e.g Dlamini',
              errorMessage: () => null,
            ),
            CTextFormField(
              label: 'National Id',
              hintText: 'e.g 4512367823490',
              errorMessage: () => null,
            ),
            CTextFormField(
              label: 'Location',
              hintText: 'e.g Matsapha, Swaziland',
              errorMessage: () => null,
            ),
          ],
        ).wrapWidgetWithPadding(context),
      );
}
