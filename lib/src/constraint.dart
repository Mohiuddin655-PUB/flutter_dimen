import 'dimen.dart';

class ConstraintDimenData {
  final double? width;
  final double? height;
  final double? maxWidth;
  final double? maxHeight;
  final double? minWidth;
  final double? minHeight;

  const ConstraintDimenData({
    this.width,
    this.height,
    this.maxWidth,
    this.maxHeight,
    this.minWidth,
    this.minHeight,
  });

  ConstraintDimenData copy({
    double? width,
    double? height,
    double? maxWidth,
    double? maxHeight,
    double? minWidth,
    double? minHeight,
  }) {
    return ConstraintDimenData(
      width: width ?? this.width,
      height: height ?? this.height,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHeight: maxHeight ?? this.maxHeight,
      minWidth: minWidth ?? this.minWidth,
      minHeight: minHeight ?? this.minHeight,
    );
  }

  ConstraintDimenData defaults({
    double? width,
    double? height,
    double? maxWidth,
    double? maxHeight,
    double? minWidth,
    double? minHeight,
    double? smaller,
    double? smallest,
  }) {
    return ConstraintDimenData(
      width: this.width ?? width,
      height: this.height ?? height,
      maxWidth: this.maxWidth ?? maxWidth,
      maxHeight: this.maxHeight ?? maxHeight,
      minWidth: this.minWidth ?? minWidth,
      minHeight: this.minHeight ?? minHeight,
    );
  }

  ConstraintDimenData scale(double scaleFactor) {
    return ConstraintDimenData(
      width: width * scaleFactor,
      height: height * scaleFactor,
      maxWidth: maxWidth * scaleFactor,
      maxHeight: maxHeight * scaleFactor,
      minWidth: minWidth * scaleFactor,
      minHeight: minHeight * scaleFactor,
    );
  }

  ConstraintDimenData operator +(ConstraintDimenData other) {
    return ConstraintDimenData(
      width: width + other.width,
      height: height + other.height,
      maxWidth: maxWidth + other.maxWidth,
      maxHeight: maxHeight + other.maxHeight,
      minWidth: minWidth + other.minWidth,
      minHeight: minHeight + other.minHeight,
    );
  }

  ConstraintDimenData operator -(ConstraintDimenData other) {
    return ConstraintDimenData(
      width: width - other.width,
      height: height - other.height,
      maxWidth: maxWidth - other.maxWidth,
      maxHeight: maxHeight - other.maxHeight,
      minWidth: minWidth - other.minWidth,
      minHeight: minHeight - other.minHeight,
    );
  }

  ConstraintDimenData operator *(ConstraintDimenData other) {
    return ConstraintDimenData(
      width: width * other.width,
      height: height * other.height,
      maxWidth: maxWidth * other.maxWidth,
      maxHeight: maxHeight * other.maxHeight,
      minWidth: minWidth * other.minWidth,
      minHeight: minHeight * other.minHeight,
    );
  }

  ConstraintDimenData operator %(ConstraintDimenData other) {
    return ConstraintDimenData(
      width: width % other.width,
      height: height % other.height,
      maxWidth: maxWidth % other.maxWidth,
      maxHeight: maxHeight % other.maxHeight,
      minWidth: minWidth % other.minWidth,
      minHeight: minHeight % other.minHeight,
    );
  }

  ConstraintDimenData operator /(ConstraintDimenData other) {
    return ConstraintDimenData(
      width: width / other.width,
      height: height / other.height,
      maxWidth: maxWidth / other.maxWidth,
      maxHeight: maxHeight / other.maxHeight,
      minWidth: minWidth / other.minWidth,
      minHeight: minHeight / other.minHeight,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ConstraintDimenData &&
        width == other.width &&
        height == other.height &&
        maxWidth == other.maxWidth &&
        maxHeight == other.maxHeight &&
        minWidth == other.minWidth &&
        minHeight == other.minHeight;
  }

  @override
  String toString() {
    return '$ConstraintDimenData(width: $width, height: $height, maxWidth: $maxWidth, maxHeight: $maxHeight, minWidth: $minWidth, minHeight: $minHeight';
  }

  @override
  int get hashCode {
    return Object.hash(width, height, maxWidth, maxHeight, minWidth, minHeight);
  }
}

class ConstraintDimen extends Dimen {
  final ConstraintDimenData? normal;
  final ConstraintDimenData? medium;
  final ConstraintDimenData? large;
  final ConstraintDimenData? larger;
  final ConstraintDimenData? largest;
  final ConstraintDimenData? small;
  final ConstraintDimenData? smaller;
  final ConstraintDimenData? smallest;

  const ConstraintDimen({
    this.normal,
    ConstraintDimenData? medium,
    ConstraintDimenData? large,
    ConstraintDimenData? larger,
    ConstraintDimenData? largest,
    ConstraintDimenData? small,
    ConstraintDimenData? smaller,
    ConstraintDimenData? smallest,
  })  : medium = medium ?? normal,
        large = large ?? medium ?? normal,
        larger = larger ?? large ?? medium ?? normal,
        largest = largest ?? larger ?? large ?? medium ?? normal,
        small = small ?? normal,
        smaller = smaller ?? small ?? normal,
        smallest = smallest ?? smaller ?? small ?? normal;

  const ConstraintDimen.none() : this(normal: const ConstraintDimenData());

  ConstraintDimen.all({
    double? width,
    double? height,
    double? maxWidth,
    double? maxHeight,
    double? minWidth,
    double? minHeight,
  }) : this(
          normal: ConstraintDimenData(
            width: width,
            height: height,
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            minWidth: minWidth,
            minHeight: minHeight,
          ),
        );

  @override
  ConstraintDimen copy({
    ConstraintDimenData? normal,
    ConstraintDimenData? medium,
    ConstraintDimenData? large,
    ConstraintDimenData? larger,
    ConstraintDimenData? largest,
    ConstraintDimenData? small,
    ConstraintDimenData? smaller,
    ConstraintDimenData? smallest,
  }) {
    return ConstraintDimen(
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

  ConstraintDimen defaults(
    ConstraintDimenData? normal, {
    ConstraintDimenData? medium,
    ConstraintDimenData? large,
    ConstraintDimenData? larger,
    ConstraintDimenData? largest,
    ConstraintDimenData? small,
    ConstraintDimenData? smaller,
    ConstraintDimenData? smallest,
  }) {
    return ConstraintDimen(
      normal: this.normal ?? normal,
      medium: this.medium ?? medium,
      large: this.large ?? large,
      larger: this.larger ?? larger,
      largest: this.largest ?? largest,
      small: this.small ?? small,
      smaller: this.smaller ?? smaller,
      smallest: this.smallest ?? smallest,
    );
  }

  @override
  ConstraintDimen scale(double scaleFactor) {
    return ConstraintDimen(
      normal: normal?.scale(scaleFactor),
      medium: medium?.scale(scaleFactor),
      large: large?.scale(scaleFactor),
      larger: larger?.scale(scaleFactor),
      largest: largest?.scale(scaleFactor),
      small: small?.scale(scaleFactor),
      smaller: smaller?.scale(scaleFactor),
      smallest: smallest?.scale(scaleFactor),
    );
  }

  ConstraintDimen operator +(ConstraintDimen other) {
    return ConstraintDimen(
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

  ConstraintDimen operator -(ConstraintDimen other) {
    return ConstraintDimen(
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

  ConstraintDimen operator *(ConstraintDimen other) {
    return ConstraintDimen(
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

  ConstraintDimen operator %(ConstraintDimen other) {
    return ConstraintDimen(
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

  ConstraintDimen operator /(ConstraintDimen other) {
    return ConstraintDimen(
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
    return other is ConstraintDimen &&
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
    return '$ConstraintDimen(normal: $normal, medium: $medium, large: $large, larger: $larger, largest: $largest, small: $small, smaller: $smaller, smallest: $smallest';
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

extension on double? {
  double get _use => this ?? 0.0;

  double? operator +(double? other) => other != null ? _use + other : this;

  double? operator -(double? other) => other != null ? _use - other : this;

  double? operator *(double? other) => other != null ? _use * other : this;

  double? operator %(double? other) => other != null ? _use % other : this;

  double? operator /(double? other) => other != null ? _use / other : this;
}

extension on ConstraintDimenData? {
  ConstraintDimenData? operator +(ConstraintDimenData? other) {
    return other != null ? use + other : this;
  }

  ConstraintDimenData? operator -(ConstraintDimenData? other) {
    return other != null ? use - other : this;
  }

  ConstraintDimenData? operator *(ConstraintDimenData? other) {
    return other != null ? use * other : this;
  }

  ConstraintDimenData? operator %(ConstraintDimenData? other) {
    return other != null ? use % other : this;
  }

  ConstraintDimenData? operator /(ConstraintDimenData? other) {
    return other != null ? use / other : this;
  }
}

extension ConstraintDimenDataHelper on ConstraintDimenData? {
  ConstraintDimenData get use => this ?? const ConstraintDimenData();
}
