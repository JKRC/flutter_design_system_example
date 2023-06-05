import 'package:ds_example/ds/ds_color.dart';
import 'package:ds_example/ds/ds_opacity.dart';
import 'package:flutter/material.dart';

abstract class DsShadows {
  static final BoxShadow small = BoxShadow(
    color: DsColor.shadow.withOpacity(
      DsOpacity.low,
    ),
    spreadRadius: 0.5,
    blurRadius: 2,
    offset: const Offset(0, 1),
  );

  static final BoxShadow medium = BoxShadow(
    color: DsColor.shadow.withOpacity(
      DsOpacity.low,
    ),
    spreadRadius: 2,
    blurRadius: 4,
    offset: const Offset(0, 2),
  );

  static final BoxShadow large = BoxShadow(
    color: DsColor.shadow.withOpacity(
      DsOpacity.low,
    ),
    spreadRadius: 3,
    blurRadius: 6,
    offset: const Offset(0, 3),
  );
}
