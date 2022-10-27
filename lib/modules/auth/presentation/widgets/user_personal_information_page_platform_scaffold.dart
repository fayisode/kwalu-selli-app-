import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kwalu_selli/modules/auth/presentation/widgets/user_personal_information_page_bottom_nav.dart';
import 'package:kwalu_selli/modules/auth/presentation/widgets/user_personal_information_page_form_element.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/shared_widget/platform/platform_scaffold.dart';
import '../../../../core/utils/extensions/page_ext.dart';
import '../../../../core/utils/extensions/text_ext.dart';

class UserPersonalInformationPagePlatformScaffold extends StatelessWidget {
  const UserPersonalInformationPagePlatformScaffold({
    required this.scaffoldKey,
    // this.dialogContext,
    Key? key,
  }) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;
  // final BuildContext? dialogContext;

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        key: scaffoldKey,
        bottomNavigation: const UserPersonalInformationPageBottomNav()
            .wrapBottomNavigation(context),
        child: SingleChildScrollView(
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
              const UserPersonalInformationFormElement(),
            ],
          ).wrapWidgetWithPadding(context),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    // properties.add(
    //   DiagnosticsProperty<BuildContext?>('dialogContext', dialogContext),
    // );
    properties.add(
      DiagnosticsProperty<GlobalKey<ScaffoldState>>('scaffoldKey', scaffoldKey),
    );
  }
}
