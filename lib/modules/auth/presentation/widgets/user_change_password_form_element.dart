import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widget/widget/text_form_field.dart';
import '../../../../core/utils/values/result.dart';
import '../../domain/value_objects/user_password.dart';
import '../manager/bloc/password_reset_bloc.dart';

class UserChangePasswordFormElement extends StatelessWidget {
  const UserChangePasswordFormElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CTextFormField(
        showErrorMessage: _showErrorMessage(context),
        label: 'Password',
        hintText: 'e.g *********',
        errorMessage: () => null,
        onChanged: (String input) {
          _changePasswordEvent(context, input);
        },
      );

  bool _showErrorMessage(BuildContext context) =>
      context.watch<PasswordResetBloc>().state.showErrorMessages;

  void _changePasswordEvent(BuildContext context, String input) {
    context.read<PasswordResetBloc>().add(
          PasswordResetEvent.passwordChanged(input),
        );
  }

  String? _passwordErrorMessage(BuildContext context) {
    final Result<UserPassword> result =
        context.read<PasswordResetBloc>().state.password;

    if (result.isLeft) {
      return result.errorMessage;
    }

    return null;
  }
}
