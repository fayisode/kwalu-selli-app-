import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/styles/styles.dart';

import '../../color/colors.dart';
import 'button_helper.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.callback,
    required this.title,
    this.isActive = false,
    this.icon = Icons.add,
    this.definedButtonType = const DefinedButtonType.isWithNoIcon(),
    this.definedButtonSize = const DefinedButtonSize.isBig(),
    Key? key,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback callback;
  final DefinedButtonType definedButtonType;
  final DefinedButtonSize definedButtonSize;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Material(
        color: Colors.transparent,
        child: SizedBox(
          height: definedHeight(definedButtonSize),
          width: double.infinity,
          child: definedButtonType.map(
            isWithRightIcon: (_) => ElevatedButton(
              style: primaryButtonCustomStyle(isActive: isActive),
              onPressed: performUserActionUserInputActiveAndNotLoading(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTitleText(
                    definedButtonSize: definedButtonSize,
                    title: title,
                    color: Colors.white,
                  ),
                  const SizedBox(width: kDefaultSizing * 0.25),
                  Icon(icon),
                ],
              ), //
            ),
            isWithLeftIcon: (_) => ElevatedButton.icon(
              onPressed: performUserActionUserInputActiveAndNotLoading(),
              style: primaryButtonCustomStyle(isActive: isActive),
              icon: Icon(icon),
              label: ButtonTitleText(
                definedButtonSize: definedButtonSize,
                title: title,
                color: Colors.white,
              ),
            ),
            isWithNoIcon: (_) => ElevatedButton(
              style: primaryButtonCustomStyle(isActive: isActive),
              onPressed: performUserActionUserInputActiveAndNotLoading(),
              child: ButtonTitleText(
                definedButtonSize: definedButtonSize,
                title: title,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );

  VoidCallback? performUserActionUserInputActiveAndNotLoading() =>
      isActive ? callback : null;

  ButtonStyle primaryButtonCustomStyle({bool isActive = false}) =>
      TextButton.styleFrom(
        backgroundColor: isActive ? primaryColor[500] : primaryColor[200],
        elevation: isActive ? 1 : 1,
        shape: const RoundedRectangleBorder(
          borderRadius: CBorderRadius.button(),
        ),
        fixedSize: const Size(double.infinity, kDefaultSizing * 3.5),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isActive', isActive));
    properties
        .add(DiagnosticsProperty<DefinedButtonType>('type', definedButtonType));
    properties.add(ObjectFlagProperty<VoidCallback>.has('callback', callback));
    properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty<IconData>('icon', icon));
    properties.add(
      DiagnosticsProperty<DefinedButtonSize>(
        'definedButtonSize',
        definedButtonSize,
      ),
    );
  }
}
