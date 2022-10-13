import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/styles/padding.dart';
import '../../../../core/styles/sizing.dart';
import '../../../../core/utils/buttons/primary.dart';
import '../manager/bloc/register_bloc.dart';

class UserAccountInformationPageBottomNav extends StatelessWidget {
  const UserAccountInformationPageBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const CEdgeInsects.allMedium(),
        color: Colors.transparent,
        height: kDefaultSizing * 5.5,
        child: PrimaryButton(
          callback: () {
            context
                .read<RegisterBloc>()
                .add(const RegisterEvent.moveToPersonalInfoUsed());
          },
          title: 'Continue',
          isActive: true,
        ),
      );
}
