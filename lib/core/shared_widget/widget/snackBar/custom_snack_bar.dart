import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../color/colors.dart';
import '../../../styles/sizing.dart';
import '../../../utils/extensions/text_ext.dart';

/// Popup widget that you can use by default to show some information
class CustomSnackBar extends StatefulWidget {
  const CustomSnackBar.success({
    required this.message,
    super.key,
    this.icon = const Icon(
      Icons.sentiment_very_satisfied,
      color: Color(0x15000000),
      size: 120,
    ),
    this.maxLines = 2,
  });

  const CustomSnackBar.info({
    required this.message,
    super.key,
    this.icon = const Icon(
      Icons.sentiment_neutral,
      color: Color(0x15000000),
      size: 120,
    ),
    this.maxLines = 2,
  });

  const CustomSnackBar.error({
    required this.message,
    super.key,
    this.icon = const Icon(
      Icons.error_rounded,
      color: Colors.red,
    ),
    this.maxLines = 2,
  });
  final String message;
  final Widget icon;
  final int maxLines;

  @override
  _CustomSnackBarState createState() => _CustomSnackBarState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('maxLines', maxLines));
    properties.add(StringProperty('message', message));
  }
}

class _CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) => Material(
        color: accentRed[100],
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultSizing * 0.75,
            vertical: kDefaultSizing,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: widget.icon,
                ),
              ),
              const SizedBox(width: 8),
              widget.message.mediumTextMedium(
                textColor: accentRed[400],
              ),
            ],
          ),
        ),
      );
}
