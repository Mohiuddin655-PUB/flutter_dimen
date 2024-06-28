import 'dimens.dart';

const _kExtraLarge = 50.0;
const _kLarge = 30.0;
const _kExtraMedium = 25.0;
const _kMedium = 20.0;
const _kNormal = 15.0;
const _kSmall = 10.0;
const _kExtraSmall = 5.0;

typedef RadiusDimen = double;

class RadiusDimens extends Dimens {
  final RadiusDimen large;
  final RadiusDimen medium;
  final RadiusDimen normal;
  final RadiusDimen small;
  final RadiusDimen extraLarge;
  final RadiusDimen extraMedium;
  final RadiusDimen extraSmall;

  const RadiusDimens({
    RadiusDimen? extraLarge,
    RadiusDimen? large,
    RadiusDimen? extraMedium,
    RadiusDimen? medium,
    RadiusDimen? normal,
    RadiusDimen? small,
    RadiusDimen? extraSmall,
  })  : extraLarge = extraLarge ?? _kExtraLarge,
        large = large ?? _kLarge,
        extraMedium = extraMedium ?? _kExtraMedium,
        medium = medium ?? _kMedium,
        normal = normal ?? _kNormal,
        small = small ?? _kSmall,
        extraSmall = extraSmall ?? _kExtraSmall;

  @override
  RadiusDimens copy({
    RadiusDimen? extraLarge,
    RadiusDimen? large,
    RadiusDimen? extraMedium,
    RadiusDimen? medium,
    RadiusDimen? normal,
    RadiusDimen? small,
    RadiusDimen? extraSmall,
  }) {
    return RadiusDimens(
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
  RadiusDimens scale(double scaleFactor) {
    return RadiusDimens(
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
