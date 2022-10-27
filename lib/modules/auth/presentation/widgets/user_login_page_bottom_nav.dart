import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/styles/padding.dart';
import '../../../../core/styles/sizing.dart';
import '../../../../core/utils/buttons/primary.dart';
import '../manager/bloc/login_bloc.dart';

class UserLoginPageBottomNav extends StatelessWidget {
  const UserLoginPageBottomNav({super.key});

  @override
  Widget build(BuildContext context) => Container(
        padding: const CEdgeInsects.allMedium(),
        color: Colors.transparent,
        height: kDefaultSizing * 5.5,
        child: PrimaryButton(
          callback: () {
            context.read<LoginBloc>().add(const LoginEvent.submitUsed());
          },
          title: 'SignIn',
          isActive: true,
        ),
      );
}
