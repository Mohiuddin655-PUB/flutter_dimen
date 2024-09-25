import 'dart:ui';

import 'dimen.dart';

class WeightDimenData {
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

  const WeightDimenData(this.value);

  const WeightDimenData.black([double? value]) : this(value ?? 900);

  const WeightDimenData.extraBold([double? value]) : this(value ?? 800);

  const WeightDimenData.bold([double? value]) : this(value ?? 700);

  const WeightDimenData.semiBold([double? value]) : this(value ?? 600);

  const WeightDimenData.medium([double? value]) : this(value ?? 500);

  const WeightDimenData.normal([double? value]) : this(value ?? 400);

  const WeightDimenData.light([double? value]) : this(value ?? 300);

  const WeightDimenData.extraLight([double? value]) : this(value ?? 200);

  const WeightDimenData.thin([double? value]) : this(value ?? 100);

  WeightDimenData.from(FontWeight weight) : this(weight.value * 1.0);

  WeightDimenData scale(double scaleFactor) =>
      this * WeightDimenData(scaleFactor);

  WeightDimenData operator +(WeightDimenData other) =>
      WeightDimenData(value + other.value);

  WeightDimenData operator -(WeightDimenData other) =>
      WeightDimenData(value - other.value);

  WeightDimenData operator *(WeightDimenData other) =>
      WeightDimenData(value * other.value);

  WeightDimenData operator /(WeightDimenData other) =>
      WeightDimenData(value / other.value);

  @override
  String toString() => '$value';
}

class WeightDimen extends Dimen {
  final WeightDimenData black;
  final WeightDimenData extraBold;
  final WeightDimenData bold;
  final WeightDimenData semiBold;
  final WeightDimenData medium;
  final WeightDimenData normal;
  final WeightDimenData light;
  final WeightDimenData extraLight;
  final WeightDimenData thin;

  const WeightDimen({
    this.black = const WeightDimenData.black(),
    this.extraBold = const WeightDimenData.extraBold(),
    this.bold = const WeightDimenData.bold(),
    this.semiBold = const WeightDimenData.semiBold(),
    this.medium = const WeightDimenData.medium(),
    this.normal = const WeightDimenData.normal(),
    this.light = const WeightDimenData.light(),
    this.extraLight = const WeightDimenData.extraLight(),
    this.thin = const WeightDimenData.thin(),
  });

  @override
  WeightDimen copy({
    WeightDimenData? black,
    WeightDimenData? extraBold,
    WeightDimenData? bold,
    WeightDimenData? semiBold,
    WeightDimenData? medium,
    WeightDimenData? normal,
    WeightDimenData? light,
    WeightDimenData? extraLight,
    WeightDimenData? thin,
  }) {
    return WeightDimen(
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
  WeightDimen scale(double scaleFactor) {
    return WeightDimen(
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
