import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/shared_widget/widget/snackBar/safe_areas_value.dart';
import 'package:kwalu_selli/core/shared_widget/widget/snackBar/tap_bounce_container.dart';

typedef ControllerCallback = void Function(AnimationController);

enum DismissType { onTap, onSwipe, none }

OverlayEntry? _previousEntry;

Future<void> showTopSnackBar(
  BuildContext context,
  Widget child, {
  Duration animationDuration = const Duration(milliseconds: 1200),
  Duration reverseAnimationDuration = const Duration(milliseconds: 550),
  Duration displayDuration = const Duration(milliseconds: 3000),
  VoidCallback? onTap,
  OverlayState? overlayState,
  bool persistent = false,
  ControllerCallback? onAnimationControllerInit,
  EdgeInsets padding = const EdgeInsets.all(16),
  Curve curve = Curves.elasticOut,
  Curve reverseCurve = Curves.linearToEaseOut,
  SafeAreaValues safeAreaValues = const SafeAreaValues(),
  DismissType dismissType = DismissType.onTap,
  DismissDirection dismissDirection = DismissDirection.up,
}) async {
  overlayState ??= Overlay.of(context);
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (BuildContext context) => TopSnackBar(
      onDismissed: () {
        if (overlayEntry.mounted && _previousEntry == overlayEntry) {
          overlayEntry.remove();
          _previousEntry = null;
        }
      },
      animationDuration: animationDuration,
      reverseAnimationDuration: reverseAnimationDuration,
      displayDuration: displayDuration,
      onTap: onTap,
      persistent: persistent,
      onAnimationControllerInit: onAnimationControllerInit,
      padding: padding,
      curve: curve,
      reverseCurve: reverseCurve,
      safeAreaValues: safeAreaValues,
      dismissType: dismissType,
      dismissDirection: dismissDirection,
      child: child,
    ),
  );

  if (_previousEntry != null && _previousEntry!.mounted) {
    _previousEntry?.remove();
  }
  overlayState?.insert(overlayEntry);
  _previousEntry = overlayEntry;
}

/// Widget that controls all animations
class TopSnackBar extends StatefulWidget {
  const TopSnackBar({
    required this.child,
    required this.onDismissed,
    required this.animationDuration,
    required this.reverseAnimationDuration,
    required this.displayDuration,
    required this.padding,
    required this.curve,
    required this.reverseCurve,
    required this.safeAreaValues,
    this.onTap,
    this.persistent = false,
    this.onAnimationControllerInit,
    Key? key,
    this.dismissType = DismissType.onTap,
    this.dismissDirection = DismissDirection.up,
  }) : super(key: key);
  final Widget child;
  final VoidCallback onDismissed;
  final Duration animationDuration;
  final Duration reverseAnimationDuration;
  final Duration displayDuration;
  final VoidCallback? onTap;
  final ControllerCallback? onAnimationControllerInit;
  final bool persistent;
  final EdgeInsets padding;
  final Curve curve;
  final Curve reverseCurve;
  final SafeAreaValues safeAreaValues;
  final DismissType dismissType;
  final DismissDirection dismissDirection;

  @override
  _TopSnackBarState createState() => _TopSnackBarState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(ObjectFlagProperty<VoidCallback>.has('onDismissed', onDismissed));
    properties.add(
        DiagnosticsProperty<Duration>('animationDuration', animationDuration));
    properties.add(DiagnosticsProperty<Duration>(
        'reverseAnimationDuration', reverseAnimationDuration));
    properties
        .add(DiagnosticsProperty<Duration>('displayDuration', displayDuration));
    properties.add(ObjectFlagProperty<VoidCallback?>.has('onTap', onTap));
    properties.add(ObjectFlagProperty<ControllerCallback?>.has(
        'onAnimationControllerInit', onAnimationControllerInit));
    properties.add(DiagnosticsProperty<bool>('persistent', persistent));
    properties.add(DiagnosticsProperty<EdgeInsets>('padding', padding));
    properties.add(DiagnosticsProperty<Curve>('curve', curve));
    properties.add(DiagnosticsProperty<Curve>('reverseCurve', reverseCurve));
    properties.add(
        DiagnosticsProperty<SafeAreaValues>('safeAreaValues', safeAreaValues));
    properties.add(EnumProperty<DismissType>('dismissType', dismissType));
    properties.add(
        EnumProperty<DismissDirection>('dismissDirection', dismissDirection));
  }
}

class _TopSnackBarState extends State<TopSnackBar>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> offsetAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    _setupAndStartAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Future<void> _setupAndStartAnimation() async {
    animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
      reverseDuration: widget.reverseAnimationDuration,
    );

    widget.onAnimationControllerInit?.call(animationController);

    final Tween<Offset> offsetTween = Tween<Offset>(
      begin: const Offset(0, -1),
      end: Offset.zero,
    );

    offsetAnimation = offsetTween.animate(
      CurvedAnimation(
        parent: animationController,
        curve: widget.curve,
        reverseCurve: widget.reverseCurve,
      ),
    )..addStatusListener((AnimationStatus status) async {
        if (status == AnimationStatus.completed) {
          await Future<dynamic>.delayed(widget.displayDuration);
          _dismiss();
        }

        if (status == AnimationStatus.dismissed) {
          if (mounted) {
            widget.onDismissed.call();
          }
        }
      });

    if (mounted) {
      await animationController.forward();
    }
  }

  void _dismiss() {
    if (!widget.persistent && mounted) {
      animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) => Positioned(
        top: widget.padding.top,
        left: widget.padding.left,
        right: widget.padding.right,
        child: SlideTransition(
          position: offsetAnimation,
          child: SafeArea(
            top: widget.safeAreaValues.top,
            bottom: widget.safeAreaValues.bottom,
            left: widget.safeAreaValues.left,
            right: widget.safeAreaValues.right,
            minimum: widget.safeAreaValues.minimum,
            maintainBottomViewPadding:
                widget.safeAreaValues.maintainBottomViewPadding,
            child: _buildDismissibleChild(),
          ),
        ),
      );

  /// Build different type of [Widget] depending on [DismissType] value
  Widget _buildDismissibleChild() {
    switch (widget.dismissType) {
      case DismissType.onTap:
        return TapBounceContainer(
          onTap: () {
            if (mounted) {
              widget.onTap?.call();
              _dismiss();
            }
          },
          child: widget.child,
        );
      case DismissType.onSwipe:
        return Dismissible(
          direction: widget.dismissDirection,
          key: UniqueKey(),
          onDismissed: (DismissDirection direction) => _dismiss(),
          child: widget.child,
        );
      case DismissType.none:
        return widget.child;
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      DiagnosticsProperty<AnimationController>(
          'animationController', animationController),
    );
    properties.add(DiagnosticsProperty<Animation<Offset>>(
        'offsetAnimation', offsetAnimation));
  }
}
