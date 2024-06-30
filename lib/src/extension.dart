import 'package:flutter/material.dart';

import 'constraint.dart';
import 'dimen.dart';
import 'dimens.dart';
import 'keys.dart';
import 'size.dart';
import 'weight.dart';

extension DimenHelper on BuildContext {
  // CONFIGS
  Size get _size => MediaQuery.sizeOf(this);

  T? dimenOf<T extends Dimens>(String name, [Size? size]) {
    return Dimen.of(name, size ?? _size);
  }

  ConstraintDimens constraintDimenOf(String name, [Size? size]) {
    return Dimen.constraintOf(name, size ?? _size);
  }

  SizeDimens sizeDimenOf(String name, [Size? size]) {
    return Dimen.sizeOf(name, size ?? _size);
  }

  WeightDimens weightDimenOf(String name, [Size? size]) {
    return Dimen.weightOf(name, size ?? _size);
  }

  // CONSTRAINT DIMENS

  ConstraintDimens get button {
    return constraintDimenOf(DimenKeys.button).defaults(ConstraintDimen(
      maxWidth: _size.width,
    ));
  }

  ConstraintDimens get images {
    return constraintDimenOf(DimenKeys.image).defaults(ConstraintDimen(
      maxWidth: _size.width,
      maxHeight: _size.height,
    ));
  }

  ConstraintDimens get screen {
    return constraintDimenOf(DimenKeys.screen).defaults(ConstraintDimen(
      maxWidth: _size.width,
      maxHeight: _size.height,
    ));
  }

  // SIZE DIMENS

  SizeDimens get corners => sizeDimenOf(DimenKeys.corner);

  SizeDimens get dividers => sizeDimenOf(DimenKeys.divider);

  SizeDimens get fontSizes => sizeDimenOf(DimenKeys.fontSize);

  SizeDimens get icons => sizeDimenOf(DimenKeys.icon);

  SizeDimens get margins => sizeDimenOf(DimenKeys.margin);

  SizeDimens get paddings => sizeDimenOf(DimenKeys.padding);

  SizeDimens get spacers => sizeDimenOf(DimenKeys.spacing);

  SizeDimens get strokes => sizeDimenOf(DimenKeys.stroke);

  // WEIGHT DIMENS

  WeightDimens get fontWeights => weightDimenOf(DimenKeys.fontWeight);
}
