import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widget/widget/text_form_field.dart';
import '../../../../core/utils/values/result.dart';
import '../../domain/value_objects/email_address.dart';
import '../../domain/value_objects/phone_number.dart';
import '../../domain/value_objects/user_password.dart';
import '../manager/bloc/register_bloc.dart';

class UserAccountInformationFormElement extends StatelessWidget {
  const UserAccountInformationFormElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<RegisterBloc, RegisterState>(
        builder: (BuildContext context, RegisterState state) => Column(
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
              label: 'Phone Number',
              hintText: 'e.g 76678865',
              errorMessage: () => _phoneErrorMessage(context),
              onChanged: (String input) {
                _changePhoneNumberEvent(context, input);
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
        ),
      );

  bool _showErrorMessage(BuildContext context) =>
      context.watch<RegisterBloc>().state.showErrorMessage;

  void _changeEmailEvent(BuildContext context, String input) {
    context.read<RegisterBloc>().add(
          RegisterEvent.emailAddressChanged(
            input,
          ),
        );
  }

  String? _emailErrorMessage(BuildContext context) {
    final Result<UserEmailAddress> emailResult =
        context.read<RegisterBloc>().state.email;
    if (emailResult.isLeft) {
      return emailResult.errorMessage;
    }
    return null;
  }

  void _changePhoneNumberEvent(BuildContext context, String input) {
    context.read<RegisterBloc>().add(
          RegisterEvent.phoneNumberChanged(input),
        );
  }

  String? _phoneErrorMessage(BuildContext context) {
    final Result<UserPhoneNumber> phoneResult =
        context.read<RegisterBloc>().state.phoneNumber;
    if (phoneResult.isLeft) {
      return phoneResult.errorMessage;
    }
    return null;
  }

  void _changePasswordEvent(BuildContext context, String input) {
    context.read<RegisterBloc>().add(
          RegisterEvent.passwordChanged(input),
        );
  }

  String? _passwordErrorMessage(BuildContext context) {
    final Result<UserPassword> passwordResult =
        context.read<RegisterBloc>().state.password;
    if (passwordResult.isLeft) {
      return passwordResult.errorMessage;
    }
    return null;
  }
}
