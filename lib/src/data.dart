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
      button: Dimen.constraintOf(DimenKeys.button, size),
      image: Dimen.constraintOf(DimenKeys.image, size),
      screen: Dimen.constraintOf(DimenKeys.screen, size, defaults: defaults),
      corner: Dimen.sizeOf(DimenKeys.corner, size),
      divider: Dimen.sizeOf(DimenKeys.divider, size),
      fontSize: Dimen.sizeOf(DimenKeys.fontSize, size),
      icon: Dimen.sizeOf(DimenKeys.icon, size),
      margin: Dimen.sizeOf(DimenKeys.margin, size),
      padding: Dimen.sizeOf(DimenKeys.padding, size),
      spacing: Dimen.sizeOf(DimenKeys.spacing, size),
      stroke: Dimen.sizeOf(DimenKeys.stroke, size),
      fontWeight: Dimen.weightOf(DimenKeys.fontWeight, size),
    );
  }
}
