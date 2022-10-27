import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widget/widget/text_form_field.dart';
import '../../../../core/utils/values/result.dart';
import '../../domain/value_objects/email_address.dart';
import '../../domain/value_objects/user_password.dart';
import '../manager/bloc/login_bloc.dart';

class UserLoginFormElement extends StatelessWidget {
  const UserLoginFormElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          CTextFormField(
            showErrorMessage: _showErrorMessage(context),
            label: 'Email',
            hintText: 'e.g test@test.com',
            errorMessage: () => _emailErrorMessage(context),
            onChanged: (String input) {
              _changeEmailEvent(context, input);
            },
          ),
          CTextFormField(
            showErrorMessage: _showErrorMessage(context),
            label: 'Password',
            hintText: 'e.g *********',
            errorMessage: () => _passwordErrorMessage(context),
            onChanged: (String input) {
              _changePasswordEvent(context, input);
            },
          ),
        ],
      );

  bool _showErrorMessage(BuildContext context) =>
      context.watch<LoginBloc>().state.showErrorMessages;

  void _changeEmailEvent(BuildContext context, String input) {
    context.read<LoginBloc>().add(
          LoginEvent.emailChanged(
            input,
          ),
        );
  }

  String? _emailErrorMessage(BuildContext context) {
    final Result<UserEmailAddress> emailResult =
        context.read<LoginBloc>().state.emailAddress;
    if (emailResult.isLeft) {
      return emailResult.errorMessage;
    }
    return null;
  }

  void _changePasswordEvent(BuildContext context, String input) {
    context.read<LoginBloc>().add(
          LoginEvent.passwordChanged(input),
        );
  }

  String? _passwordErrorMessage(BuildContext context) {
    final Result<UserPassword> passwordResult =
        context.read<LoginBloc>().state.password;
    if (passwordResult.isLeft) {
      return passwordResult.errorMessage;
    }
    return null;
  }
}
