import 'dart:ui';

import 'dimens.dart';

class WeightDimen {
  final double value;

  FontWeight get fontWeight {
    final x = value >= 0 && value <= 1 ? value * 100 : value;
    if (x <= 100) {
      return FontWeight.w100;
    } else if (x <= 200) {
      return FontWeight.w200;
    } else if (x <= 300) {
      return FontWeight.w300;
    } else if (x <= 400) {
      return FontWeight.w400;
    } else if (x <= 500) {
      return FontWeight.w500;
    } else if (x <= 600) {
      return FontWeight.w600;
    } else if (x <= 700) {
      return FontWeight.w700;
    } else if (x <= 800) {
      return FontWeight.w800;
    } else if (x <= 900) {
      return FontWeight.w900;
    } else {
      return FontWeight.normal;
    }
  }

  const WeightDimen(this.value);

  const WeightDimen.extraBold([double? value]) : this(value ?? 900);

  const WeightDimen.bold([double? value]) : this(value ?? 800);

  const WeightDimen.extraMedium([double? value]) : this(value ?? 700);

  const WeightDimen.medium([double? value]) : this(value ?? 600);

  const WeightDimen.normal([double? value]) : this(value ?? 500);

  const WeightDimen.light([double? value]) : this(value ?? 400);

  const WeightDimen.extraLight([double? value]) : this(value ?? 300);

  const WeightDimen.tin([double? value]) : this(value ?? 200);

  const WeightDimen.extraTin([double? value]) : this(value ?? 100);

  WeightDimen.from(FontWeight weight) : this(weight.value * 1.0);

  WeightDimen operator +(double value) => WeightDimen(value + value);

  WeightDimen operator -(double value) => WeightDimen(value - value);

  WeightDimen operator *(double value) => WeightDimen(value * value);

  WeightDimen operator /(double value) => WeightDimen(value / value);
}

class WeightDimens extends Dimens {
  final WeightDimen extraBold;
  final WeightDimen bold;
  final WeightDimen extraMedium;
  final WeightDimen medium;
  final WeightDimen normal;
  final WeightDimen light;
  final WeightDimen extraLight;
  final WeightDimen tin;
  final WeightDimen extraTin;

  const WeightDimens({
    WeightDimen? extraBold,
    WeightDimen? bold,
    WeightDimen? extraMedium,
    WeightDimen? medium,
    WeightDimen? normal,
    WeightDimen? light,
    WeightDimen? extraLight,
    WeightDimen? tin,
    WeightDimen? extraTin,
  })  : extraBold = extraBold ?? const WeightDimen.extraBold(),
        bold = bold ?? const WeightDimen.bold(),
        extraMedium = extraMedium ?? const WeightDimen.extraMedium(),
        medium = medium ?? const WeightDimen.medium(),
        normal = normal ?? const WeightDimen.normal(),
        light = light ?? const WeightDimen.light(),
        extraLight = extraLight ?? const WeightDimen.extraLight(),
        tin = tin ?? const WeightDimen.tin(),
        extraTin = extraTin ?? const WeightDimen.extraTin();

  @override
  WeightDimens copy({
    WeightDimen? extraBold,
    WeightDimen? bold,
    WeightDimen? extraMedium,
    WeightDimen? medium,
    WeightDimen? normal,
    WeightDimen? light,
    WeightDimen? extraLight,
    WeightDimen? tin,
    WeightDimen? extraTin,
  }) {
    return WeightDimens(
      extraBold: extraBold ?? this.extraBold,
      bold: bold ?? this.bold,
      extraMedium: extraMedium ?? this.extraMedium,
      medium: medium ?? this.medium,
      normal: normal ?? this.normal,
      light: light ?? this.light,
      extraLight: extraLight ?? this.extraLight,
      tin: tin ?? this.tin,
      extraTin: extraTin ?? this.extraTin,
    );
  }

  @override
  WeightDimens scale(double scaleFactor) {
    return WeightDimens(
      extraBold: extraBold * scaleFactor,
      bold: bold * scaleFactor,
      extraMedium: extraMedium * scaleFactor,
      medium: medium * scaleFactor,
      normal: normal * scaleFactor,
      light: light * scaleFactor,
      extraLight: extraLight * scaleFactor,
      tin: tin * scaleFactor,
      extraTin: extraTin * scaleFactor,
    );
  }
}
