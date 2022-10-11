import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/styles/styles.dart';

import '../../color/colors.dart';
import 'button_helper.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.callback,
    required this.title,
    this.isActive = false,
    this.icon = Icons.add,
    this.type = const DefinedButtonType.isWithNoIcon(),
    this.definedButtonSize = const DefinedButtonSize.isBig(),
    Key? key,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback callback;
  final DefinedButtonType type;
  final String title;
  final IconData icon;
  final DefinedButtonSize definedButtonSize;

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isActive ? callback : null,
          child: Container(
            height: definedHeight(definedButtonSize),
            width: double.infinity,
            decoration: BoxDecoration(
              color: primaryColor[100],
              borderRadius: const CBorderRadius.button(),
            ),
            child: ButtonItemHelper(
              definedButtonSize: definedButtonSize,
              buttontype: type,
              isActive: isActive,
              title: title,
            ),
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty<DefinedButtonType>('type', type));
    properties.add(ObjectFlagProperty<VoidCallback>.has('callback', callback));
    properties.add(DiagnosticsProperty<bool>('isActive', isActive));
    properties.add(DiagnosticsProperty<IconData>('icon', icon));
    properties.add(
      DiagnosticsProperty<DefinedButtonSize>(
        'definedButtonSize',
        definedButtonSize,
      ),
    );
  }
}
