import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/padding.dart';
import '../../../../core/styles/sizing.dart';
import '../../../../core/utils/buttons/primary.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    required this.callback,
    required this.title,
    super.key,
  });
  final VoidCallback callback;
  final String title;
  @override
  Widget build(BuildContext context) => Container(
        padding: const CEdgeInsects.allMedium(),
        color: Colors.transparent,
        height: kDefaultSizing * 5.5,
        child: PrimaryButton(
          callback: callback,
          title: title,
          isActive: true,
        ),
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>.has('callback', callback));
    properties.add(StringProperty('title', title));
  }
}
