import 'dart:ui';

import 'dimens.dart';

class WeightDimen {
  final double value;

  FontWeight get fontWeight {
    final x = value >= 0 && value <= 1 ? value * 100 : value;
    if (x >= 900) {
      return FontWeight.w900;
    } else if (x >= 800) {
      return FontWeight.w800;
    } else if (x >= 700) {
      return FontWeight.w700;
    } else if (x >= 600) {
      return FontWeight.w600;
    } else if (x >= 500) {
      return FontWeight.w500;
    } else if (x >= 400) {
      return FontWeight.w400;
    } else if (x >= 300) {
      return FontWeight.w300;
    } else if (x >= 200) {
      return FontWeight.w200;
    } else if (x >= 100) {
      return FontWeight.w100;
    } else {
      return FontWeight.normal;
    }
  }

  const WeightDimen(this.value);

  const WeightDimen.black([double? value]) : this(value ?? 900);

  const WeightDimen.extraBold([double? value]) : this(value ?? 800);

  const WeightDimen.bold([double? value]) : this(value ?? 700);

  const WeightDimen.semiBold([double? value]) : this(value ?? 600);

  const WeightDimen.medium([double? value]) : this(value ?? 500);

  const WeightDimen.normal([double? value]) : this(value ?? 400);

  const WeightDimen.light([double? value]) : this(value ?? 300);

  const WeightDimen.extraLight([double? value]) : this(value ?? 200);

  const WeightDimen.thin([double? value]) : this(value ?? 100);

  WeightDimen.from(FontWeight weight) : this(weight.value * 1.0);

  WeightDimen scale(double scaleFactor) => this * WeightDimen(scaleFactor);

  WeightDimen operator +(WeightDimen other) => WeightDimen(value + other.value);

  WeightDimen operator -(WeightDimen other) => WeightDimen(value - other.value);

  WeightDimen operator *(WeightDimen other) => WeightDimen(value * other.value);

  WeightDimen operator /(WeightDimen other) => WeightDimen(value / other.value);

  @override
  String toString() => '$value';
}

class WeightDimens extends Dimens {
  final WeightDimen black;
  final WeightDimen extraBold;
  final WeightDimen bold;
  final WeightDimen semiBold;
  final WeightDimen medium;
  final WeightDimen normal;
  final WeightDimen light;
  final WeightDimen extraLight;
  final WeightDimen thin;

  const WeightDimens({
    this.black = const WeightDimen.black(),
    this.extraBold = const WeightDimen.extraBold(),
    this.bold = const WeightDimen.bold(),
    this.semiBold = const WeightDimen.semiBold(),
    this.medium = const WeightDimen.medium(),
    this.normal = const WeightDimen.normal(),
    this.light = const WeightDimen.light(),
    this.extraLight = const WeightDimen.extraLight(),
    this.thin = const WeightDimen.thin(),
  });

  @override
  WeightDimens copy({
    WeightDimen? black,
    WeightDimen? extraBold,
    WeightDimen? bold,
    WeightDimen? semiBold,
    WeightDimen? medium,
    WeightDimen? normal,
    WeightDimen? light,
    WeightDimen? extraLight,
    WeightDimen? thin,
  }) {
    return WeightDimens(
      black: black ?? this.black,
      extraBold: extraBold ?? this.extraBold,
      bold: bold ?? this.bold,
      semiBold: semiBold ?? this.semiBold,
      medium: medium ?? this.medium,
      normal: normal ?? this.normal,
      light: light ?? this.light,
      extraLight: extraLight ?? this.extraLight,
      thin: thin ?? this.thin,
    );
  }

  @override
  WeightDimens scale(double scaleFactor) {
    return WeightDimens(
      black: black.scale(scaleFactor),
      extraBold: extraBold.scale(scaleFactor),
      bold: bold.scale(scaleFactor),
      semiBold: semiBold.scale(scaleFactor),
      medium: medium.scale(scaleFactor),
      normal: normal.scale(scaleFactor),
      light: light.scale(scaleFactor),
      extraLight: extraLight.scale(scaleFactor),
      thin: thin.scale(scaleFactor),
    );
  }

  @override
  String toString() {
    return 'Weight(black: $black, extraBold: $extraBold, bold: $bold, semiBold: $semiBold, medium: $medium, normal: $normal, light: $light, extraLight: $extraLight, thin: $thin';
  }
}
