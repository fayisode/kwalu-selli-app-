import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/color/colors.dart';
import 'package:kwalu_selli/core/enviroment_config/auto_router.gr.dart';
import 'package:kwalu_selli/core/utils/buttons/buttons.dart';
import 'package:kwalu_selli/core/utils/extensions/modal_bottom_sheet.dart';
import 'package:kwalu_selli/core/utils/extensions/string_ext.dart';
import 'package:kwalu_selli/core/utils/extensions/text_ext.dart';

import '../../../../core/styles/padding.dart';

class OnboardWidget extends StatelessWidget {
  const OnboardWidget({super.key});

  static Future<Widget?> routeToModalSheet(BuildContext context) =>
      const OnboardWidget().showModalBottomSheets<Widget>(context);

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      AutoRouter.of(context).pop();
                    },
                    icon: const Icon(Icons.close)),
              ],
            ),
            Padding(
              padding: const CEdgeInsects.allMedium(),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'onboard1'.png,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 16 * 0.75,
                  ),
                  'KwaluSelli'.heading4(),
                  const SizedBox(
                    height: 16 * 0.75,
                  ),
                  'Eswatini Biggest Market Place'.mediumTextRegular(
                    textColor: primaryColor[400],
                  ),
                  const SizedBox(
                    height: 16 * 0.5,
                  ),
                  Padding(
                    padding: const CEdgeInsects.horizontalSymmetricMedium(),
                    child:
                        'What are you waiting for? Join the Eswatini biggest business platform today to Buy and Sell anything'
                            .smallTextRegular(
                      textColor: primaryColor[200],
                      isCentered: true,
                    ),
                  ),
                  const SizedBox(
                    height: 16 * 1.75,
                  ),
                  PrimaryButton(
                    callback: () {
                      AutoRouter.of(context).push(
                        const UserAccountInformationRoute(),
                      );
                    },
                    title: 'Create a New Account',
                    isActive: true,
                    definedButtonSize: const DefinedButtonSize.isSmall(),
                  ),
                  const SizedBox(
                    height: 16 * 0.75,
                  ),
                  TertiaryButton(
                    callback: () {
                      AutoRouter.of(context).push(
                        const UserLoginRoute(),
                      );
                    },
                    title: 'Login',
                    isActive: true,
                    definedButtonSize: const DefinedButtonSize.isSmall(),
                  ),
                  const SizedBox(
                    height: 16 * 0.75,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
