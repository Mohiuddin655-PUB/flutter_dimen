import 'dart:ui';

import 'package:flutter_device_config/config.dart';

import 'constraint.dart';
import 'initializer.dart';
import 'keys.dart';
import 'size.dart';
import 'weight.dart';

class DimenData extends DimensionSize {
  // CONSTRAINT DIMENS
  final ConstraintDimen appbar;
  final ConstraintDimen bottom;
  final ConstraintDimen button;
  final ConstraintDimen image;
  final ConstraintDimen scaffold;

  // SIZE DIMENS
  final SizeDimen avatar;
  final SizeDimen corner;
  final SizeDimen divider;
  final SizeDimen fontSize;
  final SizeDimen icon;
  final SizeDimen indicator;
  final SizeDimen logo;
  final SizeDimen margin;
  final SizeDimen padding;
  final SizeDimen size;
  final SizeDimen space;
  final SizeDimen stroke;

  // WEIGHT DIMENS
  final WeightDimen fontWeight;

  const DimenData({
    required double width,
    required double height,
    required Size? assumedSize,
    // CONSTRAINT DIMENS
    required this.appbar,
    required this.bottom,
    required this.button,
    required this.image,
    required this.scaffold,
    // SIZE DIMENS
    required this.avatar,
    required this.corner,
    required this.divider,
    required this.fontSize,
    required this.icon,
    required this.indicator,
    required this.logo,
    required this.margin,
    required this.padding,
    required this.size,
    required this.space,
    required this.stroke,
    // WEIGHT DIMENS
    required this.fontWeight,
  }) : super(width, height, assumedSize);

  factory DimenData.from(double dx, double dy) {
    final size = Size(dx, dy);
    final defaults = ConstraintDimenData(maxWidth: dx, maxHeight: dy);
    return DimenData(
      width: dx,
      height: dy,
      assumedSize: DimenInitializer.assumedSize(size),
      // CONSTRAINTS
      appbar: DimenInitializer.constraintOf(DefaultDimenKeys.appbar, size),
      bottom: DimenInitializer.constraintOf(DefaultDimenKeys.bottom, size),
      button: DimenInitializer.constraintOf(DefaultDimenKeys.button, size),
      image: DimenInitializer.constraintOf(
        DefaultDimenKeys.image,
        size,
        defaults: defaults,
      ),
      scaffold: DimenInitializer.constraintOf(
        DefaultDimenKeys.scaffold,
        size,
        defaults: defaults,
      ),
      // SIZES
      avatar: DimenInitializer.sizeOf(DefaultDimenKeys.avatar, size),
      corner: DimenInitializer.sizeOf(DefaultDimenKeys.corner, size),
      divider: DimenInitializer.sizeOf(DefaultDimenKeys.divider, size),
      fontSize: DimenInitializer.sizeOf(DefaultDimenKeys.fontSize, size),
      icon: DimenInitializer.sizeOf(DefaultDimenKeys.icon, size),
      indicator: DimenInitializer.sizeOf(DefaultDimenKeys.indicator, size),
      logo: DimenInitializer.sizeOf(DefaultDimenKeys.logo, size),
      margin: DimenInitializer.sizeOf(DefaultDimenKeys.margin, size),
      padding: DimenInitializer.sizeOf(DefaultDimenKeys.padding, size),
      space: DimenInitializer.sizeOf(DefaultDimenKeys.space, size),
      size: DimenInitializer.sizeOf(DefaultDimenKeys.size, size),
      stroke: DimenInitializer.sizeOf(DefaultDimenKeys.stroke, size),
      // WEIGHTS
      fontWeight: DimenInitializer.weightOf(DefaultDimenKeys.fontWeight, size),
    );
  }

  double dp(double value, [DimensionScaleMode? scaleMode]) {
    return diagonal(this, value, scaleMode);
  }

  double dx(double value, [DimensionScaleMode? scaleMode]) {
    return getWidth(width, value, scaleMode);
  }

  double dy(double value, [DimensionScaleMode? scaleMode]) {
    return getHeight(height, value, scaleMode);
  }

  @override
  String toString() {
    return "$DimenData(appbar: $appbar, bottom: $bottom, button: $button, image: $image, scaffold: $scaffold, avatar: $avatar, corner: $corner, divider: $divider, fontSize: $fontSize, icon: $icon, indicator: $indicator, logo: $logo, margin: $margin, padding: $padding, spacing: $space, size: $size, stroke: $stroke, fontWeight: $fontWeight)";
  }
}

extension DimenDataHelper on DimenData {
  // APPBAR
  ConstraintDimenData? get normalAppbar => appbar.normal;

  ConstraintDimenData? get mediumAppbar => appbar.medium;

  ConstraintDimenData? get largeAppbar => appbar.large;

  ConstraintDimenData? get largerAppbar => appbar.larger;

  ConstraintDimenData? get largestAppbar => appbar.largest;

  ConstraintDimenData? get smallAppbar => appbar.small;

  ConstraintDimenData? get smallerAppbar => appbar.smaller;

  ConstraintDimenData? get smallestAppbar => appbar.smallest;

  // BOTTOM
  ConstraintDimenData? get normalBottom => bottom.normal;

  ConstraintDimenData? get mediumBottom => bottom.medium;

  ConstraintDimenData? get largeBottom => bottom.large;

  ConstraintDimenData? get largerBottom => bottom.larger;

  ConstraintDimenData? get largestBottom => bottom.largest;

  ConstraintDimenData? get smallBottom => bottom.small;

  ConstraintDimenData? get smallerBottom => bottom.smaller;

  ConstraintDimenData? get smallestBottom => bottom.smallest;

  // BUTTON
  ConstraintDimenData? get normalButton => button.normal;

  ConstraintDimenData? get mediumButton => button.medium;

  ConstraintDimenData? get largeButton => button.large;

  ConstraintDimenData? get largerButton => button.larger;

  ConstraintDimenData? get largestButton => button.largest;

  ConstraintDimenData? get smallButton => button.small;

  ConstraintDimenData? get smallerButton => button.smaller;

  ConstraintDimenData? get smallestButton => button.smallest;

  // IMAGE
  ConstraintDimenData? get normalImage => image.normal;

  ConstraintDimenData? get mediumImage => image.medium;

  ConstraintDimenData? get largeImage => image.large;

  ConstraintDimenData? get largerImage => image.larger;

  ConstraintDimenData? get largestImage => image.largest;

  ConstraintDimenData? get smallImage => image.small;

  ConstraintDimenData? get smallerImage => image.smaller;

  ConstraintDimenData? get smallestImage => image.smallest;

  // SCAFFOLD
  ConstraintDimenData? get normalScaffold => scaffold.normal;

  ConstraintDimenData? get mediumScaffold => scaffold.medium;

  ConstraintDimenData? get largeScaffold => scaffold.large;

  ConstraintDimenData? get largerScaffold => scaffold.larger;

  ConstraintDimenData? get largestScaffold => scaffold.largest;

  ConstraintDimenData? get smallScaffold => scaffold.small;

  ConstraintDimenData? get smallerScaffold => scaffold.smaller;

  ConstraintDimenData? get smallestScaffold => scaffold.smallest;

  // AVATARS
  double get normalAvatar => avatar.normal;

  double get mediumAvatar => avatar.medium;

  double get largeAvatar => avatar.large;

  double get largerAvatar => avatar.larger;

  double get largestAvatar => avatar.largest;

  double get smallAvatar => avatar.small;

  double get smallerAvatar => avatar.smaller;

  double get smallestAvatar => avatar.smallest;

  // CORNERS
  double get normalCorner => corner.normal;

  double get mediumCorner => corner.medium;

  double get largeCorner => corner.large;

  double get largerCorner => corner.larger;

  double get largestCorner => corner.largest;

  double get smallCorner => corner.small;

  double get smallerCorner => corner.smaller;

  double get smallestCorner => corner.smallest;

  // DIVIDERS
  double get normalDivider => divider.normal;

  double get mediumDivider => divider.medium;

  double get largeDivider => divider.large;

  double get largerDivider => divider.larger;

  double get largestDivider => divider.largest;

  double get smallDivider => divider.small;

  double get smallerDivider => divider.smaller;

  double get smallestDivider => divider.smallest;

  // FONT SIZES
  double get normalFontSize => fontSize.normal;

  double get mediumFontSize => fontSize.medium;

  double get largeFontSize => fontSize.large;

  double get largerFontSize => fontSize.larger;

  double get largestFontSize => fontSize.largest;

  double get smallFontSize => fontSize.small;

  double get smallerFontSize => fontSize.smaller;

  double get smallestFontSize => fontSize.smallest;

  // FONT WEIGHTS
  FontWeight get thinFontWeight => fontWeight.thin.fontWeight;

  FontWeight get extraLightFontWeight => fontWeight.extraLight.fontWeight;

  FontWeight get lightFontWeight => fontWeight.light.fontWeight;

  FontWeight get normalFontWeight => fontWeight.normal.fontWeight;

  FontWeight get mediumFontWeight => fontWeight.medium.fontWeight;

  FontWeight get semiBoldFontWeight => fontWeight.semiBold.fontWeight;

  FontWeight get boldFontWeight => fontWeight.bold.fontWeight;

  FontWeight get extraBoldFontWeight => fontWeight.extraBold.fontWeight;

  FontWeight get blackFontWeight => fontWeight.black.fontWeight;

  // ICON SIZES
  double get normalIcon => icon.normal;

  double get mediumIcon => icon.medium;

  double get largeIcon => icon.large;

  double get largerIcon => icon.larger;

  double get largestIcon => icon.largest;

  double get smallIcon => icon.small;

  double get smallerIcon => icon.smaller;

  double get smallestIcon => icon.smallest;

  // INDICATORS
  double get normalIndicator => indicator.normal;

  double get mediumIndicator => indicator.medium;

  double get largeIndicator => indicator.large;

  double get largerIndicator => indicator.larger;

  double get largestIndicator => indicator.largest;

  double get smallIndicator => indicator.small;

  double get smallerIndicator => indicator.smaller;

  double get smallestIndicator => indicator.smallest;

  // LOGOS
  double get normalLogo => logo.normal;

  double get mediumLogo => logo.medium;

  double get largeLogo => logo.large;

  double get largerLogo => logo.larger;

  double get largestLogo => logo.largest;

  double get smallLogo => logo.small;

  double get smallerLogo => logo.smaller;

  double get smallestLogo => logo.smallest;

  // MARGINS
  double get normalMargin => margin.normal;

  double get mediumMargin => margin.medium;

  double get largeMargin => margin.large;

  double get largerMargin => margin.larger;

  double get largestMargin => margin.largest;

  double get smallMargin => margin.small;

  double get smallerMargin => margin.smaller;

  double get smallestMargin => margin.smallest;

  // PADDINGS
  double get normalPadding => padding.normal;

  double get mediumPadding => padding.medium;

  double get largePadding => padding.large;

  double get largerPadding => padding.larger;

  double get largestPadding => padding.largest;

  double get smallPadding => padding.small;

  double get smallerPadding => padding.smaller;

  double get smallestPadding => padding.smallest;

  // SPACES
  double get normalSpace => space.normal;

  double get mediumSpace => space.medium;

  double get largeSpace => space.large;

  double get largerSpace => space.larger;

  double get largestSpace => space.largest;

  double get smallSpace => space.small;

  double get smallerSpace => space.smaller;

  double get smallestSpace => space.smallest;

  // STROKES
  double get normalStroke => stroke.normal;

  double get mediumStroke => stroke.medium;

  double get largeStroke => stroke.large;

  double get largerStroke => stroke.larger;

  double get largestStroke => stroke.largest;

  double get smallStroke => stroke.small;

  double get smallerStroke => stroke.smaller;

  double get smallestStroke => stroke.smallest;

  // SIZES
  double get normal => size.normal;

  double get medium => size.medium;

  double get large => size.large;

  double get larger => size.larger;

  double get largest => size.largest;

  double get small => size.small;

  double get smaller => size.smaller;

  double get smallest => size.smallest;
}
