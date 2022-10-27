import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/shared_widget/widget/loader.dart';
import '../../../../core/shared_widget/widget/snackBar/snack_bar_widget.dart';
import '../manager/bloc/login_bloc.dart';
import '../widgets/user_login_page_platform_scaffold.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
BuildContext? dialogContext;

class UserLoginPage extends StatelessWidget {
  const UserLoginPage({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<LoginBloc, LoginState>(
        listener: (BuildContext loader, LoginState state) {
          if (loader.read<LoginBloc>().state.isSubmitting) {
            _showLoadingWidget(loader);
          } else {
            _removeLoadingWidgetIfActive();
            _processUseCaseResponse(loader, context);
          }
        },
        child: UserLoginPagePlatformScaffold(
          scaffoldKey: _scaffoldKey,
        ),
      );

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

  void _removeLoadingWidgetIfActive() {
    if (dialogContext != null) {
      AutoRouter.of(_scaffoldKey.currentContext!).pop();
      dialogContext = null;
    }
  }

  void _processUseCaseResponse(BuildContext loader, BuildContext context) {
    if (responseNotNull(loader) && responseIsSuccess(loader)) {
      // AutoRouter.of(context).replace(const AccountCreationSuccessRoute());
    } else if (responseNotNull(loader) && !responseIsSuccess(loader)) {
      snackBarErrorWidget(
        context,
        loader.read<LoginBloc>().state.response!.message,
      );
    }
  }

  bool responseNotNull(BuildContext loader) =>
      loader.read<LoginBloc>().state.response != null;
  bool responseIsSuccess(BuildContext loader) =>
      loader.read<LoginBloc>().state.response!.status == 1;
}
