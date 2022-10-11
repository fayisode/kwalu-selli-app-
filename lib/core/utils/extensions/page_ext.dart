import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/styles/padding.dart';

extension PageContainer on Widget {
  SizedBox wrapWidgetWithPadding(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const CEdgeInsects.allMedium(),
          child: this,
        ),
      );

  SizedBox wrapWidgetWithOutPadding(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: this,
      );

  SizedBox wrapWidgetWithVerticalPadding(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const CEdgeInsects.verticalSymmetricMedium(),
          child: this,
        ),
      );

  SizedBox wrapWidgetWithHorizontalPadding(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const CEdgeInsects.horizontalSymmetricMedium(),
          child: this,
        ),
      );
}
