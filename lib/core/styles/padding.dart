import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/styles/sizing.dart';

class CEdgeInsects extends EdgeInsets {
  const CEdgeInsects.horizontalSymmetricSmall()
      : super.symmetric(
          horizontal: small,
        );
  const CEdgeInsects.horizontalSymmetricMedium()
      : super.symmetric(
          horizontal: medium,
        );

  const CEdgeInsects.horizontalSymmetricLarge()
      : super.symmetric(
          horizontal: large,
        );

  const CEdgeInsects.verticalSymmetricSmall()
      : super.symmetric(
          vertical: small,
        );
  const CEdgeInsects.verticalSymmetricMedium()
      : super.symmetric(
          vertical: medium,
        );
  const CEdgeInsects.verticalSymmetricLarge()
      : super.symmetric(
          vertical: large,
        );

  const CEdgeInsects.onlySmall()
      : super.only(
          right: small,
          left: small,
          top: small,
        );
  const CEdgeInsects.onlyMedium()
      : super.only(
          right: medium,
          left: medium,
          top: medium,
        );

  const CEdgeInsects.onlyLarge()
      : super.only(
          right: large,
          left: large,
          top: large,
        );

  const CEdgeInsects.allTextFormField()
      : super.only(
          left: textFormLeft,
          right: textFormRight,
          top: textFormTop,
          bottom: textFormBottom,
        );

  const CEdgeInsects.allSmall()
      : super.all(
          small,
        );
  const CEdgeInsects.allMedium() : super.all(medium);
  const CEdgeInsects.allLarge() : super.all(large);
}
