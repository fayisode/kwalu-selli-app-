import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kwalu_selli/modules/auth/presentation/widgets/user_acount_information_page_form_element.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/shared_widget/platform/platform_scaffold.dart';
import '../../../../core/shared_widget/widget/custom_bottom_nav.dart';
import '../../../../core/utils/extensions/page_ext.dart';
import '../../../../core/utils/extensions/text_ext.dart';
import '../manager/bloc/register_bloc.dart';

class UserAccountInformationPagePlatformScaffold extends StatelessWidget {
  const UserAccountInformationPagePlatformScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => PlatformScaffold(
        bottomNavigation: CustomBottomNav(
          callback: () {
            context
                .read<RegisterBloc>()
                .add(const RegisterEvent.moveToPersonalInfoUsed());
          },
          title: 'Continue',
        ).wrapBottomNavigation(context),
        child: SingleChildScrollView(
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
              const UserAccountInformationFormElement(),
            ],
          ).wrapWidgetWithPadding(context),
        ),
      );
}
