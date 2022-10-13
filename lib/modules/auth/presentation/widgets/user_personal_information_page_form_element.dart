import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_widget/widget/text_form_field.dart';
import '../../../../core/utils/values/result.dart';
import '../../domain/value_objects/name.dart';
import '../../domain/value_objects/user_national_id.dart';
import '../manager/bloc/register_bloc.dart';

class UserPersonalInformationFormElement extends StatelessWidget {
  const UserPersonalInformationFormElement({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          CTextFormField(
            showErrorMessage: _showErrorMessage(context),
            label: 'First Name',
            hintText: 'e.g John',
            errorMessage: () => _firstNameErrorMessage(context),
            onChanged: (String input) {
              _firstNameChangeEvent(context, input);
            },
          ),
          CTextFormField(
            showErrorMessage: _showErrorMessage(context),
            label: 'Last Name',
            hintText: 'e.g Dlamini',
            errorMessage: () => _lastNameErrorMessage(context),
            onChanged: (String input) {
              _lastNameChangeEvent(context, input);
            },
          ),
          CTextFormField(
            showErrorMessage: _showErrorMessage(context),
            label: 'National Id',
            hintText: 'e.g 4512367823490',
            errorMessage: () => _nationalIdErrorMessage(context),
            onChanged: (String input) {
              _nationalIdChangeEvent(context, input);
            },
          ),
          CTextFormField(
            showErrorMessage: _showErrorMessage(context),
            label: 'Location',
            hintText: 'e.g Matsapha, Swaziland',
            errorMessage: () => null,
            onChanged: (String input) {
              _locationChangeEvent(context, input);
            },
          ),
        ],
      );

  bool _showErrorMessage(BuildContext context) =>
      context.watch<RegisterBloc>().state.showErrorMessage;

  String? _firstNameErrorMessage(BuildContext context) {
    final Result<UserName> firstNameResult =
        context.read<RegisterBloc>().state.firstName;
    if (firstNameResult.isLeft) {
      return firstNameResult.errorMessage;
    }
    return null;
  }

  String? _lastNameErrorMessage(BuildContext context) {
    final Result<UserName> lastNameResult =
        context.read<RegisterBloc>().state.lastName;
    if (lastNameResult.isLeft) {
      return lastNameResult.errorMessage;
    }
    return null;
  }

  String? _nationalIdErrorMessage(BuildContext context) {
    final Result<UserNationalId> nationalIdResult =
        context.read<RegisterBloc>().state.nationalId;
    if (nationalIdResult.isLeft) {
      return nationalIdResult.errorMessage;
    }
    return null;
  }

  void _firstNameChangeEvent(BuildContext context, String input) {
    context.read<RegisterBloc>().add(
          RegisterEvent.firstNameChanged(input),
        );
  }

  void _lastNameChangeEvent(BuildContext context, String input) {
    context.read<RegisterBloc>().add(
          RegisterEvent.lastNameChanged(input),
        );
  }

  void _nationalIdChangeEvent(BuildContext context, String input) {
    context.read<RegisterBloc>().add(
          RegisterEvent.nationalIdChanged(input),
        );
  }

  void _locationChangeEvent(BuildContext context, String input) {
    context.read<RegisterBloc>().add(
          RegisterEvent.locationChanged(input),
        );
  }
}
