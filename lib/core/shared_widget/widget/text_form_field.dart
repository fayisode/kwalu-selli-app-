import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../color/colors.dart';
import '../../styles/padding.dart';
import '../../styles/sizing.dart';
import '../../utils/extensions/string_ext.dart';
import '../../utils/extensions/text_ext.dart';

class CTextFormField extends StatefulWidget {
  const CTextFormField({
    this.showErrorMessage = false,
    this.errorMessage,
    this.label = 'PlaceHolder',
    this.hintText = 'PlaceHolder',
    Key? key,
    this.isEnabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    this.onChanged,
    this.obscureText,
  }) : super(key: key);

  final String label;
  final String hintText;
  final bool isEnabled;
  final String? Function()? errorMessage;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String input)? onChanged;
  final bool? obscureText;
  final bool showErrorMessage;

  @override
  State<CTextFormField> createState() => _CTextFormFieldState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', label));
    properties.add(DiagnosticsProperty<bool>('isEnabled', isEnabled));
    properties
        .add(ObjectFlagProperty<String? Function()>.has('error', errorMessage));
    properties.add(
      IterableProperty<TextInputFormatter>(
        'inputFormatters',
        inputFormatters,
      ),
    );
    properties.add(StringProperty('hintText', hintText));
    properties.add(
      ObjectFlagProperty<Function(String input)?>.has(
        'onChanged',
        onChanged,
      ),
    );
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText));
    properties
        .add(DiagnosticsProperty<bool?>('showErrorMessage', showErrorMessage));
  }
}

class _CTextFormFieldState extends State<CTextFormField> {
  late FocusNode _myFocusNode;
  bool _isFocus = false;
  @override
  void initState() {
    super.initState();

    _myFocusNode = FocusNode();
    _myFocusNode.addListener(() {
      setState(() {
        _isFocus = !_isFocus;
      });
    });
  }

  @override
  void dispose() {
    _myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Padding(
        padding: const CEdgeInsects.verticalSymmetricSmall(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            widget.label.capitalizeFirstOfEach.mediumTextMedium(
              textColor: _getLabelTextColor(),
            ),
            const SizedBox(
              height: kDefaultSizing * 0.75,
            ),
            TextFormField(
              obscureText: widget.obscureText ?? false,
              enabled: widget.isEnabled,
              focusNode: _myFocusNode,
              inputFormatters: widget.inputFormatters,
              decoration: InputDecoration(
                prefixIcon: widget.prefixIcon,
                suffixIcon: widget.suffixIcon,
                hintText: widget.hintText,
                hintStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: _getHintColor(),
                  letterSpacing: 0.15,
                ),
                fillColor: _getFillColor(),
                errorText: _getErrorMessage(),
              ),
              onChanged: widget.onChanged,
            ),
          ],
        ),
      );

  Color? _getLabelTextColor() =>
      _isFocus ? primaryColor[500] : primaryColor[800];

  Color? _getHintColor() => _isFocus
      ? widget.errorMessage!() != null && widget.showErrorMessage
          ? accentRed[500]
          : primaryColor[500]
      : widget.errorMessage!() != null && widget.showErrorMessage
          ? accentRed[500]
          : primaryColor[500];

  Color? _getFillColor() => widget.isEnabled ? null : primaryColor[200];

  String? _getErrorMessage() =>
      widget.showErrorMessage ? widget.errorMessage!() : null;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', widget.label));
    properties.add(DiagnosticsProperty<FocusNode>('myFocusNode', _myFocusNode));
    properties.add(DiagnosticsProperty<bool>('isActive', _isFocus));
  }
}
