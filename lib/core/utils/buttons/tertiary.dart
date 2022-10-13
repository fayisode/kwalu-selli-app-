import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/styles/sizing.dart';

import '../../color/colors.dart';
import '../../styles/border_radius.dart';
import 'button_helper.dart';

class TertiaryButton extends StatelessWidget {
  const TertiaryButton({
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
  final DefinedButtonSize definedButtonSize;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.transparent,
        child: SizedBox(
          height: definedHeight(definedButtonSize),
          width: double.infinity,
          child: type.map(
            isWithRightIcon: (_) => OutlinedButton(
              onPressed: perfromUserActionUserInputActiveAndNotLoading(),
              style: outlineButtonStyle(isActive: isActive),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTitleText(
                    definedButtonSize: definedButtonSize,
                    title: title,
                    color: textColor()!,
                  ),
                  const SizedBox(width: kDefaultSizing * 0.25),
                  Icon(
                    icon,
                    color: textColor(),
                  ),
                ],
              ),
            ),
            isWithLeftIcon: (_) => OutlinedButton.icon(
              onPressed: perfromUserActionUserInputActiveAndNotLoading(),
              style: outlineButtonStyle(isActive: isActive),
              icon: Icon(
                icon,
                color: textColor(),
              ),
              label: ButtonTitleText(
                definedButtonSize: definedButtonSize,
                title: title,
                color: textColor()!,
              ),
            ),
            isWithNoIcon: (_) => OutlinedButton(
              onPressed: perfromUserActionUserInputActiveAndNotLoading(),
              style: outlineButtonStyle(isActive: isActive),
              child: ButtonTitleText(
                definedButtonSize: definedButtonSize,
                title: title,
                color: textColor()!,
              ),
            ),
          ),
        ),
      );

  VoidCallback? perfromUserActionUserInputActiveAndNotLoading() =>
      isActive ? callback : null;

  ButtonStyle outlineButtonStyle({bool isActive = false}) => ButtonStyle(
        elevation: MaterialStateProperty.all(isActive ? 0 : 0),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: CBorderRadius.button(),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.pressed)
              ? HSLColor.fromColor(primaryColor[200]!).withAlpha(0.2).toColor()
              : Colors.white;
          return color;
        }),
      );

  Color? textColor() => isActive ? primaryColor[400] : primaryColor[200];

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
