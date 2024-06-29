import 'package:flutter/material.dart';
import 'package:flutter_device_config/flutter_device_config.dart';

import '../app_dimen.dart';

class DimenData {
  final FontDimens font;
  final IconDimens icon;
  final RadiusDimens radius;
  final SizeDimens size;
  final SpacingDimens spacing;
  final WeightDimens weight;

  static DimenData? _i;

  static DimenData get i => _i ??= const DimenData._();

  const DimenData._({
    this.font = const FontDimens(),
    this.icon = const IconDimens(),
    this.radius = const RadiusDimens(),
    this.size = const SizeDimens(),
    this.spacing = const SpacingDimens(),
    this.weight = const WeightDimens(),
  });

  DimenData copy({
    FontDimens? font,
    IconDimens? icon,
    RadiusDimens? radius,
    SizeDimens? size,
    SpacingDimens? spacing,
    WeightDimens? weight,
  }) {
    return DimenData._(
      font: font ?? this.font,
      icon: icon ?? this.icon,
      radius: radius ?? this.radius,
      size: size ?? this.size,
      spacing: spacing ?? this.spacing,
      weight: weight ?? this.weight,
    );
  }
}

class DimenLayout extends StatelessWidget {
  final Iterable<String> names;
  final Widget Function(BuildContext context, DimenData data) builder;

  const DimenLayout({
    super.key,
    required this.names,
    required this.builder,
  });

  T? dimen<T extends Dimens>(BuildContext context) {
    T? t;
    for (var i in names) {
      t = context.dimenOf<T>(i);
      if (t != null) break;
    }
    return t;
  }

  @override
  Widget build(BuildContext context) {
    return builder(
      context,
      DimenData.i.copy(
        font: dimen(context),
        icon: dimen(context),
        radius: dimen(context),
        size: dimen(context),
        spacing: dimen(context),
        weight: dimen(context),
      ),
    );
  }
}

class ResponsiveDimen extends StatelessWidget {
  final String name;
  final Widget Function(BuildContext context, SizeDimens dimen) builder;

  const ResponsiveDimen({
    super.key,
    required this.name,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final dimen = context.sizeDimenOf(name);
    return ResponsiveBody(
      builder: (context, device) {
        return builder(
          context,
          dimen.defaults(
            maxWidth: device.width,
            maxHeight: device.height,
          ),
        );
      },
    );
  }
}
