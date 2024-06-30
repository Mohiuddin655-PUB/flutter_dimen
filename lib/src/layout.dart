import 'package:flutter/material.dart';

import 'data.dart';

class DimenLayout extends StatelessWidget {
  final Widget Function(BuildContext context, DimenData data) builder;

  const DimenLayout({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.sizeOf(context);
    return builder(context, DimenData.from(screen.width, screen.height));
  }
}
