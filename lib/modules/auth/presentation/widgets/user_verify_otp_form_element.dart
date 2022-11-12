import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widget/widget/text_form_field.dart';
import '../../../../core/utils/values/result.dart';
import '../../domain/value_objects/user_otp.dart';
import '../manager/bloc/password_reset_bloc.dart';

class UserVerifyFormElement extends StatelessWidget {
  const UserVerifyFormElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CTextFormField(
        showErrorMessage: _showErrorMessage(context),
        label: 'OTP',
        hintText: '****',
        errorMessage: () => _otpErrorMessage(context),
        onChanged: (String input) {
          _changeOtpEvent(context, input);
        },
      );
  bool _showErrorMessage(BuildContext context) =>
      context.watch<PasswordResetBloc>().state.showErrorMessages;

  void _changeOtpEvent(BuildContext context, String input) {
    context.read<PasswordResetBloc>().add(
          PasswordResetEvent.otpChanged(input),
        );
  }

  String? _otpErrorMessage(BuildContext context) {
    final Result<UserOtp> result = context.read<PasswordResetBloc>().state.otp;

    if (result.isLeft) {
      return result.errorMessage;
    }

    return null;
  }
}
