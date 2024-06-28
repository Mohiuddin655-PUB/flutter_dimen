import 'dimens.dart';

const _kExtraLarge = 50.0;
const _kLarge = 40.0;
const _kExtraMedium = 32.0;
const _kMedium = 28.0;
const _kNormal = 24.0;
const _kSmall = 18.0;
const _kExtraSmall = 12.0;

typedef IconDimen = double;

class IconDimens extends Dimens {
  final IconDimen large;
  final IconDimen medium;
  final IconDimen normal;
  final IconDimen small;
  final IconDimen extraLarge;
  final IconDimen extraMedium;
  final IconDimen extraSmall;

  const IconDimens({
    IconDimen? extraLarge,
    IconDimen? large,
    IconDimen? extraMedium,
    IconDimen? medium,
    IconDimen? normal,
    IconDimen? small,
    IconDimen? extraSmall,
  })  : extraLarge = extraLarge ?? _kExtraLarge,
        large = large ?? _kLarge,
        extraMedium = extraMedium ?? _kExtraMedium,
        medium = medium ?? _kMedium,
        normal = normal ?? _kNormal,
        small = small ?? _kSmall,
        extraSmall = extraSmall ?? _kExtraSmall;

  @override
  IconDimens copy({
    IconDimen? extraLarge,
    IconDimen? large,
    IconDimen? extraMedium,
    IconDimen? medium,
    IconDimen? normal,
    IconDimen? small,
    IconDimen? extraSmall,
  }) {
    return IconDimens(
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
  IconDimens scale(double scaleFactor) {
    return IconDimens(
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
