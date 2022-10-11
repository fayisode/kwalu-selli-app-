import 'package:flutter/material.dart';
import 'package:kwalu_selli/core/styles/sizing.dart';

class CBorderRadius extends BorderRadius {
  const CBorderRadius.onlySmall()
      : super.only(
          topLeft: const Radius.circular(small),
          topRight: const Radius.circular(small),
          bottomRight: const Radius.circular(small),
        );
  const CBorderRadius.onlyMedium()
      : super.only(
          topLeft: const Radius.circular(medium),
          topRight: const Radius.circular(medium),
          bottomRight: const Radius.circular(medium),
        );
  const CBorderRadius.onlyLarge()
      : super.only(
          topLeft: const Radius.circular(large),
          topRight: const Radius.circular(large),
          bottomRight: const Radius.circular(large),
        );

  const CBorderRadius.button()
      : super.only(
          topLeft: const Radius.circular(buttonSize),
          topRight: const Radius.circular(buttonSize),
          bottomRight: const Radius.circular(buttonSize),
          bottomLeft: const Radius.circular(buttonSize),
        );

  const CBorderRadius.cardSmall()
      : super.all(
          const Radius.circular(small),
        );
  const CBorderRadius.cardMedium()
      : super.all(
          const Radius.circular(medium),
        );
  const CBorderRadius.cardLarge()
      : super.all(
          const Radius.circular(large),
        );

  const CBorderRadius.verticalSmall()
      : super.vertical(
          top: const Radius.circular(small),
          bottom: const Radius.circular(small),
        );
  const CBorderRadius.verticalMedium()
      : super.vertical(
          top: const Radius.circular(medium),
          bottom: const Radius.circular(medium),
        );
  const CBorderRadius.verticalLarge()
      : super.vertical(
          top: const Radius.circular(large),
          bottom: const Radius.circular(large),
        );

  CBorderRadius.circular() : super.circular(16);

  const CBorderRadius.horizontalSmall()
      : super.horizontal(
          left: const Radius.circular(small),
          right: const Radius.circular(small),
        );
  const CBorderRadius.horizontalMedium()
      : super.horizontal(
          left: const Radius.circular(medium),
          right: const Radius.circular(medium),
        );
  const CBorderRadius.horizontalLarge()
      : super.horizontal(
          left: const Radius.circular(large),
          right: const Radius.circular(large),
        );

  const CBorderRadius.allVerySmall()
      : super.all(
          const Radius.circular(verySmall),
        );
  const CBorderRadius.allSmall()
      : super.all(
          const Radius.circular(small),
        );
  const CBorderRadius.allMedium()
      : super.all(
          const Radius.circular(medium),
        );
  const CBorderRadius.allLarge()
      : super.all(
          const Radius.circular(large),
        );
}
