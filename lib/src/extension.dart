import 'package:app_dimen/app_dimen.dart';
import 'package:flutter/material.dart';

extension DimenHelper on BuildContext {
  // CONFIGS
  Size get _size => MediaQuery.sizeOf(this);

  double get screenWidth => _size.width;

  double get screenHeight => _size.width;

  double get screenRatio => _size.aspectRatio;

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

  // BUTTON DIMENS

  ConstraintDimens get buttonDimens {
    return constraintDimenOf(DefaultDimenKeys.button).defaults(ConstraintDimen(
      maxWidth: _size.width,
    ));
  }

  ConstraintDimen? get normalButtonDimen => buttonDimens.normal;

  ConstraintDimen? get mediumButtonDimen => buttonDimens.medium;

  ConstraintDimen? get largeButtonDimen => buttonDimens.large;

  ConstraintDimen? get largerButtonDimen => buttonDimens.larger;

  ConstraintDimen? get largestButtonDimen => buttonDimens.largest;

  ConstraintDimen? get smallButtonDimen => buttonDimens.small;

  ConstraintDimen? get smallerButtonDimen => buttonDimens.smaller;

  ConstraintDimen? get smallestButtonDimen => buttonDimens.smallest;

  // IMAGE DIMENS

  ConstraintDimens get imageDimens {
    return constraintDimenOf(DefaultDimenKeys.image).defaults(ConstraintDimen(
      maxWidth: _size.width,
      maxHeight: _size.height,
    ));
  }

  ConstraintDimen? get normalImageDimen => imageDimens.normal;

  ConstraintDimen? get mediumImageDimen => imageDimens.medium;

  ConstraintDimen? get largeImageDimen => imageDimens.large;

  ConstraintDimen? get largerImageDimen => imageDimens.larger;

  ConstraintDimen? get largestImageDimen => imageDimens.largest;

  ConstraintDimen? get smallImageDimen => imageDimens.small;

  ConstraintDimen? get smallerImageDimen => imageDimens.smaller;

  ConstraintDimen? get smallestImageDimen => imageDimens.smallest;

  // SCREEN DIMENS

  ConstraintDimens get scaffoldDimens {
    return constraintDimenOf(DefaultDimenKeys.scaffold)
        .defaults(ConstraintDimen(
      maxWidth: _size.width,
      maxHeight: _size.height,
    ));
  }

  ConstraintDimen? get normalScaffoldDimen => scaffoldDimens.normal;

  ConstraintDimen? get mediumScaffoldDimen => scaffoldDimens.medium;

  ConstraintDimen? get largeScaffoldDimen => scaffoldDimens.large;

  ConstraintDimen? get largerScaffoldDimen => scaffoldDimens.larger;

  ConstraintDimen? get largestScaffoldDimen => scaffoldDimens.largest;

  ConstraintDimen? get smallScaffoldDimen => scaffoldDimens.small;

  ConstraintDimen? get smallerScaffoldDimen => scaffoldDimens.smaller;

  ConstraintDimen? get smallestScaffoldDimen => scaffoldDimens.smallest;

  double get scaffoldWidth => normalScaffoldDimen?.maxWidth ?? _size.width;

  double get scaffoldHeight => normalScaffoldDimen?.maxHeight ?? _size.height;

  double get scaffoldRatio => Size(scaffoldWidth, scaffoldHeight).aspectRatio;

  // CORNERS

  SizeDimens get corners => sizeDimenOf(DefaultDimenKeys.corner);

  SizeDimens get radius => corners;

  double get normalRadius => corners.normal;

  double get mediumRadius => corners.medium;

  double get largeRadius => corners.large;

  double get largerRadius => corners.larger;

  double get largestRadius => corners.largest;

  double get smallRadius => corners.small;

  double get smallerRadius => corners.smaller;

  double get smallestRadius => corners.smallest;

  // DIVIDERS

  SizeDimens get dividers => sizeDimenOf(DefaultDimenKeys.divider);

  double get normalDivider => dividers.normal;

  double get mediumDivider => dividers.medium;

  double get largeDivider => dividers.large;

  double get largerDivider => dividers.larger;

  double get largestDivider => dividers.largest;

  double get smallDivider => dividers.small;

  double get smallerDivider => dividers.smaller;

  double get smallestDivider => dividers.smallest;

  // FONT SIZES
  SizeDimens get fontSizes => sizeDimenOf(DefaultDimenKeys.fontSize);

  double get normalFontSize => fontSizes.normal;

  double get mediumFontSize => fontSizes.medium;

  double get largeFontSize => fontSizes.large;

  double get largerFontSize => fontSizes.larger;

  double get largestFontSize => fontSizes.largest;

  double get smallFontSize => fontSizes.small;

  double get smallerFontSize => fontSizes.smaller;

  double get smallestFontSize => fontSizes.smallest;

  // FONT WEIGHTS
  WeightDimens get fontWeights => weightDimenOf(DefaultDimenKeys.fontWeight);

  FontWeight get thinFontWeight => fontWeights.thin.fontWeight;

  FontWeight get extraLightFontWeight => fontWeights.extraLight.fontWeight;

  FontWeight get lightFontWeight => fontWeights.light.fontWeight;

  FontWeight get normalFontWeight => fontWeights.normal.fontWeight;

  FontWeight get mediumFontWeight => fontWeights.medium.fontWeight;

  FontWeight get semiBoldFontWeight => fontWeights.semiBold.fontWeight;

  FontWeight get boldFontWeight => fontWeights.bold.fontWeight;

  FontWeight get extraBoldFontWeight => fontWeights.extraBold.fontWeight;

  FontWeight get blackFontWeight => fontWeights.black.fontWeight;

  // ICON SIZES
  SizeDimens get iconSizes => sizeDimenOf(DefaultDimenKeys.icon);

  SizeDimens get icons => iconSizes;

  double get normalIconSize => iconSizes.normal;

  double get mediumIconSize => iconSizes.medium;

  double get largeIconSize => iconSizes.large;

  double get largerIconSize => iconSizes.larger;

  double get largestIconSize => iconSizes.largest;

  double get smallIconSize => iconSizes.small;

  double get smallerIconSize => iconSizes.smaller;

  double get smallestIconSize => iconSizes.smallest;

  // MARGINS
  SizeDimens get margins => sizeDimenOf(DefaultDimenKeys.margin);

  double get normalMargin => margins.normal;

  double get mediumMargin => margins.medium;

  double get largeMargin => margins.large;

  double get largerMargin => margins.larger;

  double get largestMargin => margins.largest;

  double get smallMargin => margins.small;

  double get smallerMargin => margins.smaller;

  double get smallestMargin => margins.smallest;

  // PADDINGS
  SizeDimens get paddings => sizeDimenOf(DefaultDimenKeys.padding);

  double get normalPadding => paddings.normal;

  double get mediumPadding => paddings.medium;

  double get largePadding => paddings.large;

  double get largerPadding => paddings.larger;

  double get largestPadding => paddings.largest;

  double get smallPadding => paddings.small;

  double get smallerPadding => paddings.smaller;

  double get smallestPadding => paddings.smallest;

  // SPACES
  SizeDimens get spacers => sizeDimenOf(DefaultDimenKeys.spacing);

  SizeDimens get spaces => spacers;

  double get normalSpace => spacers.normal;

  double get mediumSpace => spacers.medium;

  double get largeSpace => spacers.large;

  double get largerSpace => spacers.larger;

  double get largestSpace => spacers.largest;

  double get smallSpace => spacers.small;

  double get smallerSpace => spacers.smaller;

  double get smallestSpace => spacers.smallest;

  // STROKES
  SizeDimens get strokes => sizeDimenOf(DefaultDimenKeys.stroke);

  double get normalStroke => strokes.normal;

  double get mediumStroke => strokes.medium;

  double get largeStroke => strokes.large;

  double get largerStroke => strokes.larger;

  double get largestStroke => strokes.largest;

  double get smallStroke => strokes.small;

  double get smallerStroke => strokes.smaller;

  double get smallestStroke => strokes.smallest;

  // SIZES
  SizeDimens get sizes => sizeDimenOf(DefaultDimenKeys.size);

  double get normalSize => sizes.normal;

  double get mediumSize => sizes.medium;

  double get largeSize => sizes.large;

  double get largerSize => sizes.larger;

  double get largestSize => sizes.largest;

  double get smallSize => sizes.small;

  double get smallerSize => sizes.smaller;

  double get smallestSize => sizes.smallest;
}
