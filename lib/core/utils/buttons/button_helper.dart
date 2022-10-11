import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kwalu_selli/core/utils/extensions/text_ext.dart';

import '../../color/colors.dart';
import '../../styles/sizing.dart';

part 'button_helper.freezed.dart';

@freezed
class DefinedButtonType with _$DefinedButtonType {
  const factory DefinedButtonType.isWithRightIcon() = _IsWithRightIcon;

  const factory DefinedButtonType.isWithLeftIcon() = _IsWithLeftIcon;

  const factory DefinedButtonType.isWithNoIcon() = _IsWithNoIcon;
}

@freezed
class DefinedButtonSize with _$DefinedButtonSize {
  const factory DefinedButtonSize.isSmall() = _IsSmall;

  const factory DefinedButtonSize.isBig() = _IsBig;
}

class ButtonItemHelper extends StatelessWidget {
  const ButtonItemHelper({
    required this.buttontype,
    required this.definedButtonSize,
    required this.isActive,
    required this.title,
    this.isGray = false,
    this.icon = Icons.add,
    Key? key,
  }) : super(key: key);

  final DefinedButtonType buttontype;
  final DefinedButtonSize definedButtonSize;
  final bool isActive;
  final String title;
  final bool isGray;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ...buttontype.maybeMap(
            orElse: () => const <Widget>[SizedBox()],
            isWithLeftIcon: (_) => <Widget>[
              _IconForButton(
                isActive: isActive,
                icon: icon,
              ),
              const SizedBox(width: kDefaultSizing * 0.25),
            ],
          ),
          definedButtonSize.maybeMap(
            orElse: () => const SizedBox(),
            isSmall: (_) => title.smallTextMedium(
              textColor: isActive
                  ? (isGray ? secondaryColor[500] : primaryColor[500])
                  : (isGray ? secondaryColor[300] : primaryColor[200]),
              fontWeight: FontWeight.w600,
            ),
            isBig: (_) => title.mediumTextMedium(
              textColor: isActive
                  ? (isGray ? secondaryColor[500] : primaryColor[500])
                  : (isGray ? secondaryColor[300] : primaryColor[200]),
            ),
          ),
          ...buttontype.maybeMap(
            orElse: () => const <Widget>[SizedBox()],
            isWithRightIcon: (_) => <Widget>[
              _IconForButton(
                isActive: isActive,
                icon: icon,
              ),
              const SizedBox(width: kDefaultSizing * 0.25),
            ],
          ),
        ],
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(DiagnosticsProperty<bool>('isActive', isActive));
    properties.add(DiagnosticsProperty<DefinedButtonType>('type', buttontype));
    properties.add(DiagnosticsProperty<bool>('isGray', isGray));
    properties.add(DiagnosticsProperty<IconData>('icon', icon));
    properties.add(
      DiagnosticsProperty<DefinedButtonSize>(
        'definedButtonSize',
        definedButtonSize,
      ),
    );
  }
}

class _IconForButton extends StatelessWidget {
  const _IconForButton({
    this.isActive = false,
    this.icon = Icons.add,
    Key? key,
  }) : super(key: key);
  final bool isActive;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Row(
        children: <Widget>[
          Icon(
            icon,
            color: isActive ? primaryColor[500] : primaryColor[200],
          ),
        ],
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('isActive', isActive));
    properties.add(DiagnosticsProperty<IconData>('icon', icon));
  }
}

class ButtonTitleText extends StatelessWidget {
  const ButtonTitleText({
    required this.definedButtonSize,
    required this.title,
    required this.color,
    Key? key,
  }) : super(key: key);

  final DefinedButtonSize definedButtonSize;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          definedButtonSize.when(
            isSmall: () => title.smallTextMedium(
              textColor: color,
              fontWeight: FontWeight.w600,
            ),
            isBig: () => title.mediumTextMedium(
              textColor: color,
            ),
          ),
        ],
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<DefinedButtonSize>(
        'definedButtonSize',
        definedButtonSize,
      ),
    );
    properties.add(StringProperty('title', title));
    properties.add(ColorProperty('color', color));
  }
}

double? definedHeight(DefinedButtonSize definedButtonSize) =>
    definedButtonSize.when(
      isSmall: () => kDefaultSizing * 2.5,
      isBig: () => kDefaultSizing * 3.5,
    );
