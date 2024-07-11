import 'dart:ui';

import 'constraint.dart';
import 'dimen.dart';
import 'keys.dart';
import 'size.dart';
import 'weight.dart';

class DimenData {
  // CONSTRAINT DIMENS
  final ConstraintDimens button;
  final ConstraintDimens image;
  final ConstraintDimens screen;

  // SIZE DIMENS
  final SizeDimens corner;
  final SizeDimens divider;
  final SizeDimens fontSize;
  final SizeDimens icon;
  final SizeDimens margin;
  final SizeDimens padding;
  final SizeDimens spacing;
  final SizeDimens stroke;

  // WEIGHT DIMENS
  final WeightDimens fontWeight;

  const DimenData({
    // CONSTRAINT DIMENS
    required this.button,
    required this.image,
    required this.screen,
    // SIZE DIMENS
    required this.corner,
    required this.divider,
    required this.fontSize,
    required this.icon,
    required this.margin,
    required this.padding,
    required this.spacing,
    required this.stroke,
    // WEIGHT DIMENS
    required this.fontWeight,
  });

  factory DimenData.from(final double dx, double dy) {
    final size = Size(dx, dy);
    final defaults = ConstraintDimen(maxWidth: dx, maxHeight: dy);
    return DimenData(
      button: Dimen.constraintOf(DefaultDimenKeys.button, size),
      image: Dimen.constraintOf(DefaultDimenKeys.image, size),
      screen: Dimen.constraintOf(DefaultDimenKeys.scaffold, size,
          defaults: defaults),
      corner: Dimen.sizeOf(DefaultDimenKeys.corner, size),
      divider: Dimen.sizeOf(DefaultDimenKeys.divider, size),
      fontSize: Dimen.sizeOf(DefaultDimenKeys.fontSize, size),
      icon: Dimen.sizeOf(DefaultDimenKeys.icon, size),
      margin: Dimen.sizeOf(DefaultDimenKeys.margin, size),
      padding: Dimen.sizeOf(DefaultDimenKeys.padding, size),
      spacing: Dimen.sizeOf(DefaultDimenKeys.spacing, size),
      stroke: Dimen.sizeOf(DefaultDimenKeys.stroke, size),
      fontWeight: Dimen.weightOf(DefaultDimenKeys.fontWeight, size),
    );
  }
}
