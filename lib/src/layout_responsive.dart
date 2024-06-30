import 'package:flutter/material.dart';

import 'data.dart';

class ResponsiveDimenLayout extends StatelessWidget {
  final Widget Function(BuildContext context, DimenData data) builder;

  const ResponsiveDimenLayout({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, screen) {
        return builder(
          context,
          DimenData.from(screen.maxWidth, screen.maxHeight),
        );
      },
    );
  }
}
