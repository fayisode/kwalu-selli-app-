import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/enviroment_config/auto_router.gr.dart';
import '../../../../core/shared_widget/widget/loader.dart';
import '../../../../core/shared_widget/widget/snackBar/snack_bar_widget.dart';
import '../manager/bloc/register_bloc.dart';
import '../widgets/user_personal_information_page_platform_scaffold.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
BuildContext? dialogContext;

class UserPersonalInformationPage extends StatelessWidget {
  const UserPersonalInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocListener<RegisterBloc, RegisterState>(
        listener: (BuildContext loader, RegisterState state) {
          if (loader.read<RegisterBloc>().state.isSubmitting) {
            _showLoadingWidget(loader);
          } else {
            _removeLoadingWidgetIfActive();
            _processUseCaseResponse(loader, context);
          }
        },
        child: UserPersonalInformationPagePlatformScaffold(
          scaffoldKey: _scaffoldKey,
          dialogContext: dialogContext,
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
      AutoRouter.of(context).replace(const AccountCreationSuccessRoute());
    } else if (responseNotNull(loader) && !responseIsSuccess(loader)) {
      snackBarErrorWidget(
        context,
        loader.read<RegisterBloc>().state.useCaseResponse!.message,
      );
    }
  }

  bool responseNotNull(BuildContext loader) =>
      loader.read<RegisterBloc>().state.useCaseResponse != null;
  bool responseIsSuccess(BuildContext loader) =>
      loader.read<RegisterBloc>().state.useCaseResponse!.status == 1;
}
