import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/styles/padding.dart';
import '../../../../core/styles/sizing.dart';
import '../../../../core/utils/buttons/primary.dart';
import '../manager/bloc/register_bloc.dart';

class UserPersonalInformationPageBottomNav extends StatelessWidget {
  const UserPersonalInformationPageBottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: const CEdgeInsects.allMedium(),
        color: Colors.transparent,
        height: kDefaultSizing * 5.5,
        child: PrimaryButton(
          callback: () {
            context.read<RegisterBloc>().add(
                  const RegisterEvent.submitUsed(),
                );
          },
          title: 'Finish',
          isActive: true,
        ),
      );
}
