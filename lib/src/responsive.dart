import 'package:flutter/material.dart';

import 'dimen.dart';
import 'dimens.dart';

class ResponsiveDimen<T extends Dimens> extends StatelessWidget {
  final String name;
  final T? initial;
  final Widget Function(BuildContext context, T dimen) builder;

  const ResponsiveDimen({
    super.key,
    this.initial,
    required this.name,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, screen) {
        final size = Size(screen.maxWidth, screen.maxHeight);
        return builder(context, Dimen.of<T>(name, size, initial));
      },
    );
  }
}
