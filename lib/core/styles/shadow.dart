import 'package:flutter/material.dart';

BoxShadow cBoxShadowThin() => BoxShadow(
      color: const HSLColor.fromAHSL(0.2, 0, 0, 0).toColor(),
      blurRadius: 3,
      offset: const Offset(0, 1),
    );

BoxShadow cBoxShadowNormal() => BoxShadow(
      color: const HSLColor.fromAHSL(0.2, 0, 0, 0).toColor(),
      blurRadius: 6,
      offset: const Offset(0, 4),
    );

BoxShadow cBoxShadowMedium() => BoxShadow(
      color: const HSLColor.fromAHSL(0.2, 0, 0, 0).toColor(),
      blurRadius: 15,
      offset: const Offset(0, 5),
    );

BoxShadow cBoxShadowLight() => BoxShadow(
      color: const HSLColor.fromAHSL(0.2, 0, 0, 0).toColor(),
      blurRadius: 24,
      offset: const Offset(0, 10),
    );

BoxShadow cBoxShadowHeavy() => BoxShadow(
      color: const HSLColor.fromAHSL(0.2, 0, 0, 0).toColor(),
      blurRadius: 35,
      offset: const Offset(0, 15),
    );

BoxShadow cBoxShadowDoubleThin() => BoxShadow(
      color: const HSLColor.fromAHSL(0.12, 0, 0, 0).toColor(),
      blurRadius: 3,
      offset: const Offset(0, 1),
    );

BoxShadow cBoxShadowDoubleThinD() => BoxShadow(
      color: const HSLColor.fromAHSL(0.24, 0, 0, 0).toColor(),
      blurRadius: 2,
      offset: const Offset(0, 1),
    );

BoxShadow cBoxShadowDoubleNormal() => BoxShadow(
      color: const HSLColor.fromAHSL(0.15, 0, 0, 0).toColor(),
      blurRadius: 6,
      offset: const Offset(0, 3),
    );

BoxShadow cBoxShadowDoubleNormalD() => BoxShadow(
      color: const HSLColor.fromAHSL(0.12, 0, 0, 0).toColor(),
      //spreadRadius: 0,
      blurRadius: 4,
      offset: const Offset(0, 2),
    );

BoxShadow cBoxShadowDoubleMedium() => BoxShadow(
      color: const HSLColor.fromAHSL(0.15, 0, 0, 0).toColor(),
      blurRadius: 20,
      offset: const Offset(0, 10),
    );

BoxShadow cBoxShadowDoubleMediumD() => BoxShadow(
      color: const HSLColor.fromAHSL(0.10, 0, 0, 0).toColor(),
      blurRadius: 3,
      offset: const Offset(0, 6),
    );

BoxShadow cBoxShadowDoubleLight() => BoxShadow(
      color: const HSLColor.fromAHSL(0.15, 0, 0, 0).toColor(),
      blurRadius: 25,
      offset: const Offset(0, 15),
    );

BoxShadow cBoxShadowDoubleLightD() => BoxShadow(
      color: const HSLColor.fromAHSL(0.5, 0, 0, 0).toColor(),
      blurRadius: 10,
      offset: const Offset(0, 5),
    );

BoxShadow cBoxShadowDoubleHeavy() => BoxShadow(
      color: const HSLColor.fromAHSL(0.2, 0, 0, 0).toColor(),
      blurRadius: 40,
      offset: const Offset(0, 20), // changes position of shadow
    );

BoxShadow cBoxShadowDoubleHeavyD() => BoxShadow(
      color: const HSLColor.fromAHSL(0.2, 0, 0, 0).toColor(),
      blurRadius: 40,
      offset: const Offset(0, 20), // changes position of shadow
    );
