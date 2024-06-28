import 'dimens.dart';

const _kExtraLarge = 32.0;
const _kLarge = 24.0;
const _kExtraMedium = 18.0;
const _kMedium = 16.0;
const _kNormal = 14.0;
const _kSmall = 12.0;
const _kExtraSmall = 10.0;

typedef FontDimen = double;

class FontDimens extends Dimens {
  final FontDimen large;
  final FontDimen medium;
  final FontDimen normal;
  final FontDimen small;
  final FontDimen extraLarge;
  final FontDimen extraMedium;
  final FontDimen extraSmall;

  const FontDimens({
    FontDimen? extraLarge,
    FontDimen? large,
    FontDimen? extraMedium,
    FontDimen? medium,
    FontDimen? normal,
    FontDimen? small,
    FontDimen? extraSmall,
  })  : extraLarge = extraLarge ?? _kExtraLarge,
        large = large ?? _kLarge,
        extraMedium = extraMedium ?? _kExtraMedium,
        medium = medium ?? _kMedium,
        normal = normal ?? _kNormal,
        small = small ?? _kSmall,
        extraSmall = extraSmall ?? _kExtraSmall;

  @override
  FontDimens copy({
    FontDimen? extraLarge,
    FontDimen? large,
    FontDimen? extraMedium,
    FontDimen? medium,
    FontDimen? normal,
    FontDimen? small,
    FontDimen? extraSmall,
  }) {
    return FontDimens(
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
  FontDimens scale(double scaleFactor) {
    return FontDimens(
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
