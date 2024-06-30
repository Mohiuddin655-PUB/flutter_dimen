import 'package:app_dimen/app_dimen.dart';

import 'dimens.dart';

typedef SizeDimen = double;

class SizeDimens extends Dimens {
  final SizeDimen normal;
  final SizeDimen medium;
  final SizeDimen large;
  final SizeDimen larger;
  final SizeDimen largest;
  final SizeDimen small;
  final SizeDimen smaller;
  final SizeDimen smallest;

  const SizeDimens({
    required this.normal,
    SizeDimen? medium,
    SizeDimen? large,
    SizeDimen? larger,
    SizeDimen? largest,
    SizeDimen? small,
    SizeDimen? smaller,
    SizeDimen? smallest,
  })  : medium = medium ?? normal,
        large = large ?? medium ?? normal,
        larger = larger ?? large ?? medium ?? normal,
        largest = largest ?? larger ?? large ?? medium ?? normal,
        small = small ?? normal,
        smaller = smaller ?? small ?? normal,
        smallest = smallest ?? smaller ?? small ?? normal;

  const SizeDimens.zero() : this(normal: 0);

  const SizeDimens.all(double value) : this(normal: value);

  const SizeDimens.infinity() : this(normal: double.infinity);

  const SizeDimens.corner({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimens.divider({
    this.normal = 1,
    this.medium = 2,
    this.large = 4,
    this.larger = 8,
    this.largest = 16,
    this.small = 0.75,
    this.smaller = 0.5,
    this.smallest = 0.25,
  });

  const SizeDimens.font({
    this.normal = 14,
    this.medium = 16,
    this.large = 18,
    this.larger = 24,
    this.largest = 32,
    this.small = 12,
    this.smaller = 10,
    this.smallest = 8,
  });

  const SizeDimens.icon({
    this.normal = 24,
    this.medium = 28,
    this.large = 32,
    this.larger = 40,
    this.largest = 50,
    this.small = 18,
    this.smaller = 16,
    this.smallest = 12,
  });

  const SizeDimens.margin({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimens.padding({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimens.spacing({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimens.stroke({
    this.normal = 1,
    this.medium = 1.5,
    this.large = 2,
    this.larger = 4,
    this.largest = 8,
    this.small = 0.75,
    this.smaller = 0.5,
    this.smallest = 0.25,
  });

  @override
  SizeDimens copy({
    SizeDimen? normal,
    SizeDimen? medium,
    SizeDimen? large,
    SizeDimen? larger,
    SizeDimen? largest,
    SizeDimen? small,
    SizeDimen? smaller,
    SizeDimen? smallest,
  }) {
    return SizeDimens(
      normal: normal ?? this.normal,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      larger: larger ?? this.larger,
      largest: largest ?? this.largest,
      small: small ?? this.small,
      smaller: smaller ?? this.smaller,
      smallest: smallest ?? this.smallest,
    );
  }

  @override
  SizeDimens scale(double scaleFactor) => this * SizeDimens.all(scaleFactor);

  SizeDimens operator +(SizeDimens other) {
    return SizeDimens(
      normal: normal + other.normal,
      medium: medium + other.medium,
      large: large + other.large,
      larger: larger + other.larger,
      largest: largest + other.largest,
      small: small + other.small,
      smaller: smaller + other.smaller,
      smallest: smallest + other.smallest,
    );
  }

  SizeDimens operator -(SizeDimens other) {
    return SizeDimens(
      normal: normal - other.normal,
      medium: medium - other.medium,
      large: large - other.large,
      larger: larger - other.larger,
      largest: largest - other.largest,
      small: small - other.small,
      smaller: smaller - other.smaller,
      smallest: smallest - other.smallest,
    );
  }

  SizeDimens operator *(SizeDimens other) {
    return SizeDimens(
      normal: normal * other.normal,
      medium: medium * other.medium,
      large: large * other.large,
      larger: larger * other.larger,
      largest: largest * other.largest,
      small: small * other.small,
      smaller: smaller * other.smaller,
      smallest: smallest * other.smallest,
    );
  }

  SizeDimens operator %(SizeDimens other) {
    return SizeDimens(
      normal: normal % other.normal,
      medium: medium % other.medium,
      large: large % other.large,
      larger: larger % other.larger,
      largest: largest % other.largest,
      small: small % other.small,
      smaller: smaller % other.smaller,
      smallest: smallest % other.smallest,
    );
  }

  SizeDimens operator /(SizeDimens other) {
    return SizeDimens(
      normal: normal / other.normal,
      medium: medium / other.medium,
      large: large / other.large,
      larger: larger / other.larger,
      largest: largest / other.largest,
      small: small / other.small,
      smaller: smaller / other.smaller,
      smallest: smallest / other.smallest,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is SizeDimens &&
        normal == other.normal &&
        medium == other.medium &&
        large == other.large &&
        larger == other.larger &&
        largest == other.largest &&
        small == other.small &&
        smaller == other.smaller &&
        smallest == other.smallest;
  }

  @override
  String toString() {
    return 'Size(normal: $normal, medium: $medium, large: $large, larger: $larger, largest: $largest, small: $small, smaller: $smaller, smallest: $smallest';
  }

  @override
  int get hashCode {
    return Object.hash(
      normal,
      medium,
      large,
      larger,
      largest,
      small,
      smaller,
      smallest,
    );
  }
}
