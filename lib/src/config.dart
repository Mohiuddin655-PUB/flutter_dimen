import 'package:flutter_device_config/config.dart';

import 'dimens.dart';

class DimenConfig<T extends Dimens> {
  final T? _watch;
  final T mobile;
  final T? _tablet;
  final T? _laptop;
  final T? _desktop;
  final T? _tv;

  T get watch => _watch ?? mobile;

  T get tablet => _tablet ?? mobile;

  T get laptop => _laptop ?? tablet;

  T get desktop => _desktop ?? laptop;

  T get tv => _tv ?? desktop;

  const DimenConfig({
    required this.mobile,
    T? tablet,
    T? laptop,
    T? desktop,
    T? watch,
    T? tv,
  })  : _tablet = tablet,
        _laptop = laptop,
        _desktop = desktop,
        _watch = watch,
        _tv = tv;

  T detect(DeviceType type) {
    switch (type) {
      case DeviceType.watch:
        return watch;
      case DeviceType.mobile:
        return mobile;
      case DeviceType.tablet:
        return tablet;
      case DeviceType.laptop:
        return laptop;
      case DeviceType.desktop:
        return desktop;
      case DeviceType.tv:
        return tv;
    }
  }
}
