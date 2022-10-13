import 'package:flutter/cupertino.dart';
import 'package:kwalu_selli/core/shared_widget/widget/snackBar/top_snack_bar.dart';

import 'custom_snack_bar.dart';

void snackBarErrorWidget(
  BuildContext context,
  String value,
) =>
    showTopSnackBar(
      context,
      CustomSnackBar.error(
        message: value,
      ),
    );

void snackBarSuccessWidget(
  BuildContext context,
  String value,
) =>
    showTopSnackBar(
      context,
      CustomSnackBar.success(
        message: value,
      ),
    );
