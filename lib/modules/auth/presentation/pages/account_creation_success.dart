import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/enviroment_config/auto_router.gr.dart';
import '../../../../core/shared_widget/platform/platform_scaffold.dart';
import '../../../../core/styles/padding.dart';
import '../../../../core/styles/sizing.dart';
import '../../../../core/utils/buttons/primary.dart';
import '../../../../core/utils/extensions/page_ext.dart';
import '../../../../core/utils/extensions/string_ext.dart';
import '../../../../core/utils/extensions/text_ext.dart';

class AccountCreationSuccessPage extends StatelessWidget {
  const AccountCreationSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        bottomNavigation: Container(
          padding: const CEdgeInsects.allMedium(),
          color: Colors.transparent,
          height: kDefaultSizing * 5.5,
          child: PrimaryButton(
            callback: () {
              AutoRouter.of(context).push(
                MyHomeRoute(),
              );
            },
            title: 'Finish',
            isActive: true,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 16 * 1.75,
            ),
            'Account Creation Successful'.heading3(),
            const SizedBox(
              height: 16 * 0.25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child:
                  'Your account has been created successfully. You can now explore KwalluSelli and start shopping'
                      .smallTextRegular(
                textColor: primaryColor[200],
                isCentered: true,
              ),
            ),
            const SizedBox(
              height: 16 * 2.25,
            ),
            Image.asset(
              'success'.png,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            const SizedBox(
              height: 16 * 1.25,
            ),
          ],
        ).wrapWidgetWithPadding(context),
      );
}
