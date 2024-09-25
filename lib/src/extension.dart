import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_device_config/config.dart' hide DeviceHelper;

import 'constraint.dart';
import 'data.dart';
import 'dimen.dart';
import 'initializer.dart';
import 'keys.dart';
import 'size.dart';
import 'weight.dart';

extension DimenHelper on BuildContext {
  // CONFIGS
  Size get screenSize => MediaQuery.sizeOf(this);

  double get screenWidth => screenSize.width;

  double get screenHeight => screenSize.height;

  double get screenRatio => screenSize.aspectRatio;

  double get screenMax => max(screenWidth, screenHeight);

  double get screenMin => min(screenWidth, screenHeight);

  // SCAFFOLD DIMENS

  ConstraintDimen get scaffoldDimens {
    return DimenInitializer.constraintOf(
      DefaultDimenKeys.scaffold,
      screenSize,
    ).defaults(ConstraintDimenData(
      maxWidth: screenSize.width,
      maxHeight: screenSize.height,
    ));
  }

  Size get scaffoldSize {
    final x = scaffoldDimens.normal;
    return Size(x?.maxWidth ?? screenWidth, x?.maxHeight ?? screenHeight);
  }

  ConstraintDimenData? get normalScaffoldDimen => scaffoldDimens.normal;

  ConstraintDimenData? get mediumScaffoldDimen => scaffoldDimens.medium;

  ConstraintDimenData? get largeScaffoldDimen => scaffoldDimens.large;

  ConstraintDimenData? get largerScaffoldDimen => scaffoldDimens.larger;

  ConstraintDimenData? get largestScaffoldDimen => scaffoldDimens.largest;

  ConstraintDimenData? get smallScaffoldDimen => scaffoldDimens.small;

  ConstraintDimenData? get smallerScaffoldDimen => scaffoldDimens.smaller;

  ConstraintDimenData? get smallestScaffoldDimen => scaffoldDimens.smallest;

  double get scaffoldWidth {
    return normalScaffoldDimen?.maxWidth ?? screenSize.width;
  }

  double get scaffoldHeight {
    return normalScaffoldDimen?.maxHeight ?? screenSize.height;
  }

  double get scaffoldRatio => Size(scaffoldWidth, scaffoldHeight).aspectRatio;

  double get scaffoldMax => max(scaffoldWidth, scaffoldHeight);

  double get scaffoldMin => min(scaffoldWidth, scaffoldHeight);

  DimensionSize get dimen {
    final x = DimenInitializer.isInstance;
    return DimensionSize(
      x ? scaffoldWidth : screenWidth,
      x ? scaffoldHeight : screenHeight,
      DimenInitializer.assumedSize(screenSize),
    );
  }

  DimenData get dimens => DimenData.from(scaffoldWidth, scaffoldHeight);

  double dp(double value, [DimensionScaleMode? scaleMode]) {
    return dimen.diagonal(scaffoldSize, value, scaleMode);
  }

  double dx(double value, [DimensionScaleMode? scaleMode]) {
    return dimen.getWidth(scaffoldWidth, value, scaleMode);
  }

  double dy(double value, [DimensionScaleMode? scaleMode]) {
    return dimen.getHeight(scaffoldHeight, value, scaleMode);
  }

  T dimenOf<T extends Dimen>(String name, [Size? size]) {
    return DimenInitializer.of(name, size ?? scaffoldSize);
  }

  ConstraintDimen constraintDimenOf(String name, [Size? size]) {
    return DimenInitializer.constraintOf(name, size ?? scaffoldSize);
  }

  SizeDimen sizeDimenOf(String name, [Size? size]) {
    return DimenInitializer.sizeOf(name, size ?? scaffoldSize);
  }

  WeightDimen weightDimenOf(String name, [Size? size]) {
    return DimenInitializer.weightOf(name, size ?? scaffoldSize);
  }

  // APPBAR DIMENS

  ConstraintDimen get appbarDimens {
    return constraintDimenOf(DefaultDimenKeys.appbar)
        .defaults(ConstraintDimenData(
      maxWidth: scaffoldWidth,
    ));
  }

  ConstraintDimenData? get normalAppbarDimen => appbarDimens.normal;

  ConstraintDimenData? get mediumAppbarDimen => appbarDimens.medium;

  ConstraintDimenData? get largeAppbarDimen => appbarDimens.large;

  ConstraintDimenData? get largerAppbarDimen => appbarDimens.larger;

  ConstraintDimenData? get largestAppbarDimen => appbarDimens.largest;

  ConstraintDimenData? get smallAppbarDimen => appbarDimens.small;

  ConstraintDimenData? get smallerAppbarDimen => appbarDimens.smaller;

  ConstraintDimenData? get smallestAppbarDimen => appbarDimens.smallest;

  // BOTTOM DIMENS

  ConstraintDimen get bottomDimens {
    return constraintDimenOf(DefaultDimenKeys.bottom)
        .defaults(ConstraintDimenData(
      maxWidth: scaffoldWidth,
    ));
  }

  ConstraintDimenData? get normalBottomDimen => bottomDimens.normal;

  ConstraintDimenData? get mediumBottomDimen => bottomDimens.medium;

  ConstraintDimenData? get largeBottomDimen => bottomDimens.large;

  ConstraintDimenData? get largerBottomDimen => bottomDimens.larger;

  ConstraintDimenData? get largestBottomDimen => bottomDimens.largest;

  ConstraintDimenData? get smallBottomDimen => bottomDimens.small;

  ConstraintDimenData? get smallerBottomDimen => bottomDimens.smaller;

  ConstraintDimenData? get smallestBottomDimen => bottomDimens.smallest;

  // BUTTON DIMENS

  ConstraintDimen get buttonDimens {
    return constraintDimenOf(DefaultDimenKeys.button)
        .defaults(ConstraintDimenData(
      maxWidth: scaffoldWidth,
    ));
  }

  ConstraintDimenData? get normalButtonDimen => buttonDimens.normal;

  ConstraintDimenData? get mediumButtonDimen => buttonDimens.medium;

  ConstraintDimenData? get largeButtonDimen => buttonDimens.large;

  ConstraintDimenData? get largerButtonDimen => buttonDimens.larger;

  ConstraintDimenData? get largestButtonDimen => buttonDimens.largest;

  ConstraintDimenData? get smallButtonDimen => buttonDimens.small;

  ConstraintDimenData? get smallerButtonDimen => buttonDimens.smaller;

  ConstraintDimenData? get smallestButtonDimen => buttonDimens.smallest;

  // IMAGE DIMENS

  ConstraintDimen get imageDimens {
    return constraintDimenOf(DefaultDimenKeys.image)
        .defaults(ConstraintDimenData(
      maxWidth: scaffoldWidth,
      maxHeight: scaffoldHeight,
    ));
  }

  ConstraintDimenData? get normalImageDimen => imageDimens.normal;

  ConstraintDimenData? get mediumImageDimen => imageDimens.medium;

  ConstraintDimenData? get largeImageDimen => imageDimens.large;

  ConstraintDimenData? get largerImageDimen => imageDimens.larger;

  ConstraintDimenData? get largestImageDimen => imageDimens.largest;

  ConstraintDimenData? get smallImageDimen => imageDimens.small;

  ConstraintDimenData? get smallerImageDimen => imageDimens.smaller;

  ConstraintDimenData? get smallestImageDimen => imageDimens.smallest;

  // AVATARS

  SizeDimen get avatars => sizeDimenOf(DefaultDimenKeys.avatar);

  double get normalAvatar => avatars.normal;

  double get mediumAvatar => avatars.medium;

  double get largeAvatar => avatars.large;

  double get largerAvatar => avatars.larger;

  double get largestAvatar => avatars.largest;

  double get smallAvatar => avatars.small;

  double get smallerAvatar => avatars.smaller;

  double get smallestAvatar => avatars.smallest;

  // CORNERS

  SizeDimen get corners => sizeDimenOf(DefaultDimenKeys.corner);

  SizeDimen get radius => corners;

  double get normalRadius => corners.normal;

  double get mediumRadius => corners.medium;

  double get largeRadius => corners.large;

  double get largerRadius => corners.larger;

  double get largestRadius => corners.largest;

  double get smallRadius => corners.small;

  double get smallerRadius => corners.smaller;

  double get smallestRadius => corners.smallest;

  // DIVIDERS

  SizeDimen get dividers => sizeDimenOf(DefaultDimenKeys.divider);

  double get normalDivider => dividers.normal;

  double get mediumDivider => dividers.medium;

  double get largeDivider => dividers.large;

  double get largerDivider => dividers.larger;

  double get largestDivider => dividers.largest;

  double get smallDivider => dividers.small;

  double get smallerDivider => dividers.smaller;

  double get smallestDivider => dividers.smallest;

  // FONT SIZES
  SizeDimen get fontSizes => sizeDimenOf(DefaultDimenKeys.fontSize);

  double get normalFontSize => fontSizes.normal;

  double get mediumFontSize => fontSizes.medium;

  double get largeFontSize => fontSizes.large;

  double get largerFontSize => fontSizes.larger;

  double get largestFontSize => fontSizes.largest;

  double get smallFontSize => fontSizes.small;

  double get smallerFontSize => fontSizes.smaller;

  double get smallestFontSize => fontSizes.smallest;

  // FONT WEIGHTS
  WeightDimen get fontWeights => weightDimenOf(DefaultDimenKeys.fontWeight);

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
  SizeDimen get iconSizes => sizeDimenOf(DefaultDimenKeys.icon);

  SizeDimen get icons => iconSizes;

  double get normalIconSize => iconSizes.normal;

  double get mediumIconSize => iconSizes.medium;

  double get largeIconSize => iconSizes.large;

  double get largerIconSize => iconSizes.larger;

  double get largestIconSize => iconSizes.largest;

  double get smallIconSize => iconSizes.small;

  double get smallerIconSize => iconSizes.smaller;

  double get smallestIconSize => iconSizes.smallest;

  // INDICATORS

  SizeDimen get indicators => sizeDimenOf(DefaultDimenKeys.indicator);

  double get normalIndicator => indicators.normal;

  double get mediumIndicator => indicators.medium;

  double get largeIndicator => indicators.large;

  double get largerIndicator => indicators.larger;

  double get largestIndicator => indicators.largest;

  double get smallIndicator => indicators.small;

  double get smallerIndicator => indicators.smaller;

  double get smallestIndicator => indicators.smallest;

  // LOGOS

  SizeDimen get logos => sizeDimenOf(DefaultDimenKeys.logo);

  double get normalLogo => logos.normal;

  double get mediumLogo => logos.medium;

  double get largeLogo => logos.large;

  double get largerLogo => logos.larger;

  double get largestLogo => logos.largest;

  double get smallLogo => logos.small;

  double get smallerLogo => logos.smaller;

  double get smallestLogo => logos.smallest;

  // MARGINS
  SizeDimen get margins => sizeDimenOf(DefaultDimenKeys.margin);

  double get normalMargin => margins.normal;

  double get mediumMargin => margins.medium;

  double get largeMargin => margins.large;

  double get largerMargin => margins.larger;

  double get largestMargin => margins.largest;

  double get smallMargin => margins.small;

  double get smallerMargin => margins.smaller;

  double get smallestMargin => margins.smallest;

  // PADDINGS
  SizeDimen get paddings => sizeDimenOf(DefaultDimenKeys.padding);

  double get normalPadding => paddings.normal;

  double get mediumPadding => paddings.medium;

  double get largePadding => paddings.large;

  double get largerPadding => paddings.larger;

  double get largestPadding => paddings.largest;

  double get smallPadding => paddings.small;

  double get smallerPadding => paddings.smaller;

  double get smallestPadding => paddings.smallest;

  // SPACES
  SizeDimen get spacers => sizeDimenOf(DefaultDimenKeys.space);

  SizeDimen get spaces => spacers;

  double get normalSpace => spacers.normal;

  double get mediumSpace => spacers.medium;

  double get largeSpace => spacers.large;

  double get largerSpace => spacers.larger;

  double get largestSpace => spacers.largest;

  double get smallSpace => spacers.small;

  double get smallerSpace => spacers.smaller;

  double get smallestSpace => spacers.smallest;

  // STROKES
  SizeDimen get strokes => sizeDimenOf(DefaultDimenKeys.stroke);

  double get normalStroke => strokes.normal;

  double get mediumStroke => strokes.medium;

  double get largeStroke => strokes.large;

  double get largerStroke => strokes.larger;

  double get largestStroke => strokes.largest;

  double get smallStroke => strokes.small;

  double get smallerStroke => strokes.smaller;

  double get smallestStroke => strokes.smallest;

  // SIZES
  SizeDimen get sizes => sizeDimenOf(DefaultDimenKeys.size);

  double get normalSize => sizes.normal;

  double get mediumSize => sizes.medium;

  double get largeSize => sizes.large;

  double get largerSize => sizes.larger;

  double get largestSize => sizes.largest;

  double get smallSize => sizes.small;

  double get smallerSize => sizes.smaller;

  double get smallestSize => sizes.smallest;
}
