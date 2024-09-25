import 'dart:math';

import 'package:flutter/material.dart';

import 'dimen.dart';
import 'extension.dart';
import 'initializer.dart';

class DimensionalBox<T extends Dimen> extends StatelessWidget {
  final bool primary;
  final String name;
  final T? initial;
  final Widget Function(BuildContext context, T dimen) builder;

  const DimensionalBox({
    super.key,
    this.primary = true,
    this.initial,
    required this.name,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    if (primary) return builder(context, context.dimenOf<T>(name));
    return LayoutBuilder(
      builder: (context, current) {
        final base = context.normalScaffoldDimen;
        final x = min(
          (base?.width ?? current.maxWidth) + 1,
          current.maxWidth,
        );
        final y = min(
          (base?.height ?? current.maxHeight) + 1,
          current.maxHeight,
        );
        return builder(
          context,
          DimenInitializer.of<T>(name, Size(x, y), initial),
        );
      },
    );
  }
}
