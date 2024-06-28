import 'dimens.dart';

const _kExtraLarge = 32.0;
const _kLarge = 24.0;
const _kExtraMedium = 20.0;
const _kMedium = 16.0;
const _kNormal = 12.0;
const _kSmall = 8.0;
const _kExtraSmall = 4.0;

typedef SpacingDimen = double;

class SpacingDimens extends Dimens {
  final SpacingDimen large;
  final SpacingDimen medium;
  final SpacingDimen normal;
  final SpacingDimen small;
  final SpacingDimen extraLarge;
  final SpacingDimen extraMedium;
  final SpacingDimen extraSmall;

  const SpacingDimens({
    SpacingDimen? extraLarge,
    SpacingDimen? large,
    SpacingDimen? extraMedium,
    SpacingDimen? medium,
    SpacingDimen? normal,
    SpacingDimen? small,
    SpacingDimen? extraSmall,
  })  : extraLarge = extraLarge ?? _kExtraLarge,
        large = large ?? _kLarge,
        extraMedium = extraMedium ?? _kExtraMedium,
        medium = medium ?? _kMedium,
        normal = normal ?? _kNormal,
        small = small ?? _kSmall,
        extraSmall = extraSmall ?? _kExtraSmall;

  @override
  SpacingDimens copy({
    SpacingDimen? extraLarge,
    SpacingDimen? large,
    SpacingDimen? extraMedium,
    SpacingDimen? medium,
    SpacingDimen? normal,
    SpacingDimen? small,
    SpacingDimen? extraSmall,
  }) {
    return SpacingDimens(
      extraLarge: extraLarge ?? this.extraLarge,
      large: large ?? this.large,
      extraMedium: extraMedium ?? this.extraMedium,
      medium: medium ?? this.medium,
      normal: normal ?? this.normal,
      small: small ?? this.small,
      extraSmall: extraSmall ?? this.extraSmall,
    );
  }

  @override
  SpacingDimens scale(double scaleFactor) {
    return SpacingDimens(
      extraLarge: extraLarge * scaleFactor,
      large: large * scaleFactor,
      extraMedium: extraMedium * scaleFactor,
      medium: medium * scaleFactor,
      normal: normal * scaleFactor,
      small: small * scaleFactor,
      extraSmall: extraSmall * scaleFactor,
    );
  }
}
