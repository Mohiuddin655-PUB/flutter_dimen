import 'dimen.dart';

typedef SizeDimenData = double;

class SizeDimen extends Dimen {
  final SizeDimenData normal;
  final SizeDimenData medium;
  final SizeDimenData large;
  final SizeDimenData larger;
  final SizeDimenData largest;
  final SizeDimenData small;
  final SizeDimenData smaller;
  final SizeDimenData smallest;

  const SizeDimen({
    required this.normal,
    SizeDimenData? medium,
    SizeDimenData? large,
    SizeDimenData? larger,
    SizeDimenData? largest,
    SizeDimenData? small,
    SizeDimenData? smaller,
    SizeDimenData? smallest,
  })  : medium = medium ?? normal,
        large = large ?? medium ?? normal,
        larger = larger ?? large ?? medium ?? normal,
        largest = largest ?? larger ?? large ?? medium ?? normal,
        small = small ?? normal,
        smaller = smaller ?? small ?? normal,
        smallest = smallest ?? smaller ?? small ?? normal;

  const SizeDimen.zero() : this(normal: 0);

  const SizeDimen.all(double value) : this(normal: value);

  const SizeDimen.infinity() : this(normal: double.infinity);

  const SizeDimen.avatar({
    this.normal = 40,
    this.medium = 60,
    this.large = 90,
    this.larger = 120,
    this.largest = 160,
    this.small = 32,
    this.smaller = 28,
    this.smallest = 24,
  });

  const SizeDimen.corner({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimen.divider({
    this.normal = 1,
    this.medium = 2,
    this.large = 4,
    this.larger = 8,
    this.largest = 16,
    this.small = 0.75,
    this.smaller = 0.5,
    this.smallest = 0.25,
  });

  const SizeDimen.font({
    this.normal = 14,
    this.medium = 16,
    this.large = 18,
    this.larger = 24,
    this.largest = 32,
    this.small = 12,
    this.smaller = 10,
    this.smallest = 8,
  });

  const SizeDimen.icon({
    this.normal = 24,
    this.medium = 28,
    this.large = 32,
    this.larger = 40,
    this.largest = 50,
    this.small = 18,
    this.smaller = 16,
    this.smallest = 12,
  });

  const SizeDimen.indicator({
    this.normal = 4,
    this.medium = 5,
    this.large = 6,
    this.larger = 8,
    this.largest = 12,
    this.small = 3,
    this.smaller = 2,
    this.smallest = 1,
  });

  const SizeDimen.logo({
    this.normal = 40,
    this.medium = 50,
    this.large = 75,
    this.larger = 90,
    this.largest = 120,
    this.small = 32,
    this.smaller = 28,
    this.smallest = 24,
  });

  const SizeDimen.margin({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimen.padding({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimen.size({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimen.space({
    this.normal = 12,
    this.medium = 16,
    this.large = 24,
    this.larger = 32,
    this.largest = 50,
    this.small = 8,
    this.smaller = 4,
    this.smallest = 2,
  });

  const SizeDimen.stroke({
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
  SizeDimen copy({
    SizeDimenData? normal,
    SizeDimenData? medium,
    SizeDimenData? large,
    SizeDimenData? larger,
    SizeDimenData? largest,
    SizeDimenData? small,
    SizeDimenData? smaller,
    SizeDimenData? smallest,
  }) {
    return SizeDimen(
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
  SizeDimen scale(double scaleFactor) => this * SizeDimen.all(scaleFactor);

  SizeDimen operator +(SizeDimen other) {
    return SizeDimen(
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

  SizeDimen operator -(SizeDimen other) {
    return SizeDimen(
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

  SizeDimen operator *(SizeDimen other) {
    return SizeDimen(
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

  SizeDimen operator %(SizeDimen other) {
    return SizeDimen(
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

  SizeDimen operator /(SizeDimen other) {
    return SizeDimen(
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
    return other is SizeDimen &&
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
