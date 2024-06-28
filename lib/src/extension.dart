import 'dart:math';

extension DimensHelper on double? {
  double get _ => this ?? 0;

  double xd(double divider, [bool negative = false]) {
    return negative ? xdn(divider) : max(xdn(divider), 0);
  }

  double xdn(double divider) => _ / divider;

  double xi(double increment, [bool negative = false]) {
    return negative ? xin(increment) : max(xin(increment), 0);
  }

  double xin(double increment) => _ + increment;

  double xp(double percentage, [bool negative = false]) {
    return xi(_ * percentage / 100, negative);
  }

  double xpn(double percentage) => xin(_ * percentage / 100);
}
