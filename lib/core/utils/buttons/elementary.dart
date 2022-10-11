import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'button_helper.dart';

class ElementaryButton extends StatelessWidget {
  const ElementaryButton({
    required this.callback,
    required this.title,
    this.isActive = false,
    this.isGray = false,
    this.type = const DefinedButtonType.isWithNoIcon(),
    this.definedButtonSize = const DefinedButtonSize.isBig(),
    Key? key,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback callback;
  final DefinedButtonType type;
  final String title;
  final bool isGray;
  final DefinedButtonSize definedButtonSize;

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: isActive ? callback : null,
          child: ButtonItemHelper(
            definedButtonSize: definedButtonSize,
            buttontype: type,
            isActive: isActive,
            title: title,
            isGray: isGray,
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>.has('callback', callback));
    properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty<DefinedButtonType>('type', type));
    properties.add(DiagnosticsProperty<bool>('isActive', isActive));
    properties.add(DiagnosticsProperty<bool>('isGray', isGray));
    properties.add(
      DiagnosticsProperty<DefinedButtonSize>(
        'definedButtonSize',
        definedButtonSize,
      ),
    );
  }
}
