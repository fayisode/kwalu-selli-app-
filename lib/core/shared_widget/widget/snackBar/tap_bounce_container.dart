import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class TapBounceContainer extends StatefulWidget {
  const TapBounceContainer({
    required this.child,
    super.key,
    this.onTap,
  });
  final Widget child;
  final VoidCallback? onTap;

  @override
  _TapBounceContainerState createState() => _TapBounceContainerState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback?>.has('onTap', onTap));
  }
}

class _TapBounceContainerState extends State<TapBounceContainer>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  final Duration animationDuration = const Duration(milliseconds: 200);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: animationDuration,
      upperBound: 0.04,
    )..addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onPanEnd: _onPanEnd,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    if (mounted) {
      _controller.forward();
    }
  }

  Future<void> _onTapUp(TapUpDetails details) async {
    await _closeSnackBar();
  }

  Future<void> _onPanEnd(DragEndDetails details) async {
    await _closeSnackBar();
  }

  Future<void> _closeSnackBar() async {
    if (mounted) {
      await _controller.reverse();
      await Future<dynamic>.delayed(animationDuration);
      widget.onTap?.call();
    }
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty<Duration>('animationDuration', animationDuration));
  }
}
