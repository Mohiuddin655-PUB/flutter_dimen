import 'dimens.dart';

class ConstraintDimen {
  final double? width;
  final double? height;
  final double? maxWidth;
  final double? maxHeight;
  final double? minWidth;
  final double? minHeight;

  const ConstraintDimen({
    this.width,
    this.height,
    this.maxWidth,
    this.maxHeight,
    this.minWidth,
    this.minHeight,
  });

  ConstraintDimen copy({
    double? width,
    double? height,
    double? maxWidth,
    double? maxHeight,
    double? minWidth,
    double? minHeight,
  }) {
    return ConstraintDimen(
      width: width ?? this.width,
      height: height ?? this.height,
      maxWidth: maxWidth ?? this.maxWidth,
      maxHeight: maxHeight ?? this.maxHeight,
      minWidth: minWidth ?? this.minWidth,
      minHeight: minHeight ?? this.minHeight,
    );
  }

  ConstraintDimen defaults({
    double? width,
    double? height,
    double? maxWidth,
    double? maxHeight,
    double? minWidth,
    double? minHeight,
    double? smaller,
    double? smallest,
  }) {
    return ConstraintDimen(
      width: this.width ?? width,
      height: this.height ?? height,
      maxWidth: this.maxWidth ?? maxWidth,
      maxHeight: this.maxHeight ?? maxHeight,
      minWidth: this.minWidth ?? minWidth,
      minHeight: this.minHeight ?? minHeight,
    );
  }

  ConstraintDimen scale(double scaleFactor) {
    return ConstraintDimen(
      width: width * scaleFactor,
      height: height * scaleFactor,
      maxWidth: maxWidth * scaleFactor,
      maxHeight: maxHeight * scaleFactor,
      minWidth: minWidth * scaleFactor,
      minHeight: minHeight * scaleFactor,
    );
  }

  ConstraintDimen operator +(ConstraintDimen other) {
    return ConstraintDimen(
      width: width + other.width,
      height: height + other.height,
      maxWidth: maxWidth + other.maxWidth,
      maxHeight: maxHeight + other.maxHeight,
      minWidth: minWidth + other.minWidth,
      minHeight: minHeight + other.minHeight,
    );
  }

  ConstraintDimen operator -(ConstraintDimen other) {
    return ConstraintDimen(
      width: width - other.width,
      height: height - other.height,
      maxWidth: maxWidth - other.maxWidth,
      maxHeight: maxHeight - other.maxHeight,
      minWidth: minWidth - other.minWidth,
      minHeight: minHeight - other.minHeight,
    );
  }

  ConstraintDimen operator *(ConstraintDimen other) {
    return ConstraintDimen(
      width: width * other.width,
      height: height * other.height,
      maxWidth: maxWidth * other.maxWidth,
      maxHeight: maxHeight * other.maxHeight,
      minWidth: minWidth * other.minWidth,
      minHeight: minHeight * other.minHeight,
    );
  }

  ConstraintDimen operator %(ConstraintDimen other) {
    return ConstraintDimen(
      width: width % other.width,
      height: height % other.height,
      maxWidth: maxWidth % other.maxWidth,
      maxHeight: maxHeight % other.maxHeight,
      minWidth: minWidth % other.minWidth,
      minHeight: minHeight % other.minHeight,
    );
  }

  ConstraintDimen operator /(ConstraintDimen other) {
    return ConstraintDimen(
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
    return other is ConstraintDimen &&
        width == other.width &&
        height == other.height &&
        maxWidth == other.maxWidth &&
        maxHeight == other.maxHeight &&
        minWidth == other.minWidth &&
        minHeight == other.minHeight;
  }

  @override
  String toString() {
    return 'Constraint(width: $width, height: $height, maxWidth: $maxWidth, maxHeight: $maxHeight, minWidth: $minWidth, minHeight: $minHeight';
  }

  @override
  int get hashCode {
    return Object.hash(width, height, maxWidth, maxHeight, minWidth, minHeight);
  }
}

class ConstraintDimens extends Dimens {
  final ConstraintDimen? normal;
  final ConstraintDimen? medium;
  final ConstraintDimen? large;
  final ConstraintDimen? larger;
  final ConstraintDimen? largest;
  final ConstraintDimen? small;
  final ConstraintDimen? smaller;
  final ConstraintDimen? smallest;

  const ConstraintDimens({
    this.normal,
    ConstraintDimen? medium,
    ConstraintDimen? large,
    ConstraintDimen? larger,
    ConstraintDimen? largest,
    ConstraintDimen? small,
    ConstraintDimen? smaller,
    ConstraintDimen? smallest,
  })  : medium = medium ?? normal,
        large = large ?? medium ?? normal,
        larger = larger ?? large ?? medium ?? normal,
        largest = largest ?? larger ?? large ?? medium ?? normal,
        small = small ?? normal,
        smaller = smaller ?? small ?? normal,
        smallest = smallest ?? smaller ?? small ?? normal;

  const ConstraintDimens.none() : this(normal: const ConstraintDimen());

  ConstraintDimens.all({
    double? width,
    double? height,
    double? maxWidth,
    double? maxHeight,
    double? minWidth,
    double? minHeight,
  }) : this(
          normal: ConstraintDimen(
            width: width,
            height: height,
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            minWidth: minWidth,
            minHeight: minHeight,
          ),
        );

  @override
  ConstraintDimens copy({
    ConstraintDimen? normal,
    ConstraintDimen? medium,
    ConstraintDimen? large,
    ConstraintDimen? larger,
    ConstraintDimen? largest,
    ConstraintDimen? small,
    ConstraintDimen? smaller,
    ConstraintDimen? smallest,
  }) {
    return ConstraintDimens(
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

  ConstraintDimens defaults(
    ConstraintDimen? normal, {
    ConstraintDimen? medium,
    ConstraintDimen? large,
    ConstraintDimen? larger,
    ConstraintDimen? largest,
    ConstraintDimen? small,
    ConstraintDimen? smaller,
    ConstraintDimen? smallest,
  }) {
    return ConstraintDimens(
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
  ConstraintDimens scale(double scaleFactor) {
    return ConstraintDimens(
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

  ConstraintDimens operator +(ConstraintDimens other) {
    return ConstraintDimens(
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

  ConstraintDimens operator -(ConstraintDimens other) {
    return ConstraintDimens(
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

  ConstraintDimens operator *(ConstraintDimens other) {
    return ConstraintDimens(
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

  ConstraintDimens operator %(ConstraintDimens other) {
    return ConstraintDimens(
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

  ConstraintDimens operator /(ConstraintDimens other) {
    return ConstraintDimens(
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
    return other is ConstraintDimens &&
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
    return 'Constraints(normal: $normal, medium: $medium, large: $large, larger: $larger, largest: $largest, small: $small, smaller: $smaller, smallest: $smallest';
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

extension on ConstraintDimen? {
  ConstraintDimen? operator +(ConstraintDimen? other) {
    return other != null ? use + other : this;
  }

  ConstraintDimen? operator -(ConstraintDimen? other) {
    return other != null ? use - other : this;
  }

  ConstraintDimen? operator *(ConstraintDimen? other) {
    return other != null ? use * other : this;
  }

  ConstraintDimen? operator %(ConstraintDimen? other) {
    return other != null ? use % other : this;
  }

  ConstraintDimen? operator /(ConstraintDimen? other) {
    return other != null ? use / other : this;
  }
}

extension ConstraintDimenHelper on ConstraintDimen? {
  ConstraintDimen get use => this ?? const ConstraintDimen();
}
