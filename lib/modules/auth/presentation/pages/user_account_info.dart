import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/enviroment_config/auto_router.gr.dart';
import '../manager/bloc/register_bloc.dart';
import '../widgets/user_acount_information_page_platform_scafold.dart';

class UserAccountInformationPage extends StatelessWidget {
  const UserAccountInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocListener<RegisterBloc, RegisterState>(
        listener: (BuildContext context, RegisterState state) {
          if (state.moveToPersonalInfo) {
            context
                .read<RegisterBloc>()
                .add(const RegisterEvent.clearMoveToPersonalInfoStateUsed());
            AutoRouter.of(context).push(
              const UserPersonalInformationRoute(),
            );
          }
        },
        child: const UserAccountInformationPagePlatformScaffold(),
      );
}
