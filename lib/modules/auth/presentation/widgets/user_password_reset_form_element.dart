import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widget/widget/text_form_field.dart';
import '../../../../core/utils/values/result.dart';
import '../../domain/value_objects/email_address.dart';
import '../manager/bloc/password_reset_bloc.dart';

class UserResetPasswordFormElement extends StatelessWidget {
  const UserResetPasswordFormElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => CTextFormField(
        showErrorMessage: _showErrorMessage(context),
        label: 'Email',
        hintText: 'e.g test@test.com',
        errorMessage: () => _emailErrorMessage(context),
        onChanged: (String input) {
          _changeEmailEvent(context, input);
        },
      );
  bool _showErrorMessage(BuildContext context) =>
      context.watch<PasswordResetBloc>().state.showErrorMessages;

  String? _emailErrorMessage(BuildContext context) {
    final Result<UserEmailAddress> emailResult =
        context.read<PasswordResetBloc>().state.emailAddress;
    if (emailResult.isLeft) {
      return emailResult.errorMessage;
    }
    return null;
  }

  void _changeEmailEvent(BuildContext context, String input) {
    context.read<PasswordResetBloc>().add(
          PasswordResetEvent.emailChanged(input),
        );
  }
}
