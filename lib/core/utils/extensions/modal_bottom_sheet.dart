import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/color/colors.dart';

extension CustomModalBottomSheet on Widget {
  Future<Widget?> showModalBottomSheets<Widget>(BuildContext context) =>
      showModalBottomSheet<Widget>(
        barrierColor: primaryColor[900]?.withOpacity(0.75),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(),
        context: context,
        builder: (BuildContext context) => this,
      );
}
