import 'dimens.dart';

typedef SizeDimen = double;

class SizeDimens extends Dimens {
  final SizeDimen? large;
  final SizeDimen? medium;
  final SizeDimen? normal;
  final SizeDimen? small;
  final SizeDimen? extraLarge;
  final SizeDimen? extraMedium;
  final SizeDimen? extraSmall;
  final SizeDimen? maxWidth;
  final SizeDimen? maxHeight;
  final SizeDimen? minWidth;
  final SizeDimen? minHeight;

  const SizeDimens({
    this.extraLarge,
    this.large,
    this.extraMedium,
    this.medium,
    this.normal,
    this.small,
    this.extraSmall,
    this.maxWidth,
    this.maxHeight,
    this.minWidth,
    this.minHeight,
  });

  @override
  SizeDimens copy({
    SizeDimen? extraLarge,
    SizeDimen? large,
    SizeDimen? extraMedium,
    SizeDimen? medium,
    SizeDimen? normal,
    SizeDimen? small,
    SizeDimen? extraSmall,
    SizeDimen? maxWidth,
    SizeDimen? maxHeight,
    SizeDimen? minWidth,
    SizeDimen? minHeight,
  }) {
    return SizeDimens(
      extraLarge: extraLarge ?? this.extraLarge,
      large: large ?? this.large,
      extraMedium: extraMedium ?? this.extraMedium,
      medium: medium ?? this.medium,
      normal: normal ?? this.normal,
      small: small ?? this.small,
      extraSmall: extraSmall ?? this.extraSmall,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHeight: maxHeight ?? this.maxHeight,
      minWidth: minWidth ?? this.minWidth,
      minHeight: minHeight ?? this.minHeight,
    );
  }

  SizeDimens defaults({
    SizeDimen? extraLarge,
    SizeDimen? large,
    SizeDimen? extraMedium,
    SizeDimen? medium,
    SizeDimen? normal,
    SizeDimen? small,
    SizeDimen? extraSmall,
    SizeDimen? maxWidth,
    SizeDimen? maxHeight,
    SizeDimen? minWidth,
    SizeDimen? minHeight,
  }) {
    return SizeDimens(
      extraLarge: this.extraLarge ?? extraLarge,
      large: this.large ?? large,
      extraMedium: this.extraMedium ?? extraMedium,
      medium: this.medium ?? medium,
      normal: this.normal ?? normal,
      small: this.small ?? small,
      extraSmall: this.extraSmall ?? extraSmall,
      maxWidth: this.maxWidth ?? maxWidth,
      maxHeight: this.maxHeight ?? maxHeight,
      minWidth: this.minWidth ?? minWidth,
      minHeight: this.minHeight ?? minHeight,
    );
  }

  @override
  SizeDimens scale(double scaleFactor) {
    return SizeDimens(
      extraLarge: extraLarge != null ? extraLarge! * scaleFactor : null,
      large: large != null ? large! * scaleFactor : null,
      extraMedium: extraMedium != null ? extraMedium! * scaleFactor : null,
      medium: medium != null ? medium! * scaleFactor : null,
      normal: normal != null ? normal! * scaleFactor : null,
      small: small != null ? small! * scaleFactor : null,
      extraSmall: extraSmall != null ? extraSmall! * scaleFactor : null,
      maxWidth: maxWidth != null ? maxWidth! * scaleFactor : null,
      maxHeight: maxHeight != null ? maxHeight! * scaleFactor : null,
      minWidth: minWidth != null ? minWidth! * scaleFactor : null,
      minHeight: minHeight != null ? minHeight! * scaleFactor : null,
    );
  }
}
