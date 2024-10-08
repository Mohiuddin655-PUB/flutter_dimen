import 'dart:math';

import 'package:flutter/material.dart';

import 'data.dart';
import 'extension.dart';

class DimenLayout extends StatelessWidget {
  final bool primary;
  final Widget Function(BuildContext context, DimenData data) builder;

  const DimenLayout({
    super.key,
    this.primary = true,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    if (primary) return builder(context, context.dimens);
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
        return builder(context, DimenData.from(x, y));
      },
    );
  }
}
