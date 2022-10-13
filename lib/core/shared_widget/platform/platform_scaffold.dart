import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///check is device type is an android or ios
class PlatformScaffold extends StatelessWidget {
  ///constructor
  const PlatformScaffold({
    required this.child,
    Key? key,
    this.materialAppBar,
    this.materialCurpatinoNavigationBar,
    this.bottomNavigation,
    this.backgroundColor,
    this.isExpandable,
    this.extendBodyBehindAppBar,
    this.isImageBackground,
    this.backgroundImage,
    this.floatingActionButton,
  }) : super(key: key);

  ///Needed parameters
  /// child widget
  final Widget child;

  final AppBar? materialAppBar;

  final CupertinoNavigationBar? materialCurpatinoNavigationBar;

  final Widget? bottomNavigation;

  ///Background color
  final Color? backgroundColor;

  ///Is expandable
  final bool? isExpandable;

  final bool? extendBodyBehindAppBar;

  final bool? isImageBackground;
  final String? backgroundImage;
  final Widget? floatingActionButton;
  @override
  Widget build(BuildContext context) => isImageBackground == null
      ? androidPlatformScaffold(isExpandblae: isExpandable)
      : androidPlatformScaffoldWithImage();

  ///Material scaffold for android
  Material androidPlatformScaffold({bool? isExpandblae}) => Material(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: backgroundColor ?? Colors.white,
            appBar: materialAppBar,
            body: child,
            bottomNavigationBar: bottomNavigation,
            resizeToAvoidBottomInset: isExpandable ?? false,
            floatingActionButton: floatingActionButton,
          ),
        ),
      );

  Material androidPlatformScaffoldWithImage() => Material(
        color: Colors.transparent,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          appBar: materialAppBar,
          body: DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage!),
                fit: BoxFit.fill,
              ),
            ),
            child: child,
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('scaffoldBKColor', backgroundColor));
    properties.add(DiagnosticsProperty<bool?>('isExpandable', isExpandable));
    properties.add(
      DiagnosticsProperty<bool?>(
        'extendBodyBehindAppBar',
        extendBodyBehindAppBar,
      ),
    );
    properties.add(
      DiagnosticsProperty<bool?>('isImageBackgroung', isImageBackground),
    );
    properties.add(StringProperty('backgroundImage', backgroundImage));
  }
}
