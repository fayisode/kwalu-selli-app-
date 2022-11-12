import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/enviroment_config/auto_router.gr.dart';
import '../../../../core/shared_widget/widget/loader.dart';
import '../../../../core/shared_widget/widget/snackBar/snack_bar_widget.dart';
import '../manager/bloc/password_reset_bloc.dart';
import '../widgets/user_reset_password_platform_scaffold.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
BuildContext? dialogContext;

class UserResetPasswordPage extends StatelessWidget {
  const UserResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocListener<PasswordResetBloc, PasswordResetState>(
        listener: (BuildContext loader, PasswordResetState state) {
          if (loader.read<PasswordResetBloc>().state.isSubmitting) {
            _showLoadingWidget(loader);
          } else {
            _removeLoadingWidgetIfActive();
            _processUseCaseResponse(loader, context);
          }
        },
        child: UserResetPasswordPlatformScaffold(
          scaffoldKey: _scaffoldKey,
        ),
      );

  void _removeLoadingWidgetIfActive() {
    if (dialogContext != null) {
      AutoRouter.of(_scaffoldKey.currentContext!).pop();
      dialogContext = null;
    }
  }

  void _processUseCaseResponse(BuildContext loader, BuildContext context) {
    if (responseNotNull(loader) && responseIsSuccess(loader)) {
      AutoRouter.of(context).push(
        const UserVerifyOtpRoute(),
      );
    } else if (responseNotNull(loader) && !responseIsSuccess(loader)) {
      snackBarErrorWidget(
        context,
        loader.read<PasswordResetBloc>().state.response!.message,
      );
    }
  }

  bool responseNotNull(BuildContext loader) =>
      loader.read<PasswordResetBloc>().state.response != null;
  bool responseIsSuccess(BuildContext loader) =>
      loader.read<PasswordResetBloc>().state.response!.status == 1;
}

void _showLoadingWidget(BuildContext loader) {
  showDialog<dynamic>(
    barrierColor: primaryColor[100]?.withOpacity(0.5),
    context: _scaffoldKey.currentContext ?? loader,
    builder: (BuildContext contexts) {
      dialogContext = contexts;
      return const CustomLoaderWidget();
    },
  );
}
