import 'package:flutter/material.dart';
import 'package:flutter_device_config/config.dart';

import 'config.dart';
import 'config_data.dart';
import 'constraint.dart';
import 'defaults.dart';
import 'dimens.dart';
import 'keys.dart';
import 'size.dart';
import 'weight.dart';

typedef DimenConfigs = Map<String, DimenConfig>;

class Dimen {
  final DeviceType? _type;
  final DeviceConfig? _config;
  final DimenConfigs _dimens = {};

  static Dimen? _i;

  static Dimen get i {
    if (_i != null) {
      return _i!;
    } else {
      throw UnimplementedError("Dimen not initialized yet!");
    }
  }

  Device device(Size size) {
    final x = _config ?? DeviceConfig.i;
    if (_type != null) return x.deviceFromType(_type!);
    return x.device(size.width, size.height);
  }

  static DimenConfig? _of(String name) => _i?._dimens[name];

  static T of<T extends Dimens>(String name, Size size, [T? initial]) {
    final device = i.device(size);
    final scaleFactor = device.fontScaleFactor;
    final x = _of(name)?.detect(device.type);
    if (x is ConstraintDimens) {
      return x.scale(scaleFactor) as T;
    } else if (x is SizeDimens) {
      return x.scale(scaleFactor) as T;
    } else if (x is WeightDimens) {
      return x.scale(scaleFactor) as T;
    } else if (initial != null) {
      return initial;
    }
    throw UnimplementedError("$T not initialized yet for $name");
  }

  static ConstraintDimens constraintOf(
    String name,
    Size size, {
    ConstraintDimen? defaults,
    bool defaultScalable = false,
  }) {
    final device = i.device(size);
    final scaleFactor = device.sizeScaleFactor;
    final x = _of(name)?.detect(device.type);
    final y = x is ConstraintDimens ? x : const ConstraintDimens.none();
    final z = defaultScalable && defaults != null ? y : y.scale(scaleFactor);
    final m = defaults != null ? z.defaults(defaults) : z;
    return defaultScalable ? m.scale(scaleFactor) : m;
  }

  static SizeDimens sizeOf(String name, Size size) {
    final device = i.device(size);
    final scaleFactor = device.sizeScaleFactor;
    final x = _of(name)?.detect(device.type);
    final y = x is SizeDimens ? x : const SizeDimens.zero();
    return y.scale(scaleFactor);
  }

  static WeightDimens weightOf(String name, Size size) {
    final device = i.device(size);
    final scaleFactor = device.weightScaleFactor;
    final x = _of(name)?.detect(device.type);
    final y = x is WeightDimens ? x : const WeightDimens();
    return y.scale(scaleFactor);
  }

  static void init({
    // CONFIGS
    DeviceConfig? deviceConfig,
    DeviceType? deviceType,
    Iterable<DimenConfigData> dimens = const [],
    // CONSTRAINT DIMENS
    DimenConfig<ConstraintDimens> button = DefaultConfigs.button,
    DimenConfig<ConstraintDimens> image = DefaultConfigs.image,
    DimenConfig<ConstraintDimens> screen = DefaultConfigs.screen,
    // SIZE DIMENS
    DimenConfig<SizeDimens> corner = DefaultConfigs.corner,
    DimenConfig<SizeDimens> divider = DefaultConfigs.divider,
    DimenConfig<SizeDimens> fontSize = DefaultConfigs.fontSize,
    DimenConfig<SizeDimens> icon = DefaultConfigs.icon,
    DimenConfig<SizeDimens> margin = DefaultConfigs.margin,
    DimenConfig<SizeDimens> padding = DefaultConfigs.padding,
    DimenConfig<SizeDimens> spacing = DefaultConfigs.spacing,
    DimenConfig<SizeDimens> stroke = DefaultConfigs.stroke,
    // WEIGHT DIMENS
    DimenConfig<WeightDimens> fontWeight = DefaultConfigs.fontWeight,
  }) {
    _i = Dimen(
      // CONFIGS
      deviceType: deviceType,
      deviceConfig: deviceConfig,
      dimens: dimens,
      // CONSTRAINT DIMENS
      button: button,
      image: image,
      screen: screen,
      // SIZE DIMENS
      corner: corner,
      divider: divider,
      fontSize: fontSize,
      icon: icon,
      margin: margin,
      padding: padding,
      spacing: spacing,
      stroke: stroke,
      // WEIGHT DIMENS
      fontWeight: fontWeight,
    );
  }

  static void attach({
    Iterable<DimenConfigData> dimens = const [],
  }) {
    if (dimens.isNotEmpty) {
      i._dimens.addEntries(dimens.map((e) => MapEntry(e.name, e.config)));
    }
  }

  void createInstance() => _i = this;

  Dimen({
    // CONFIGS
    DeviceConfig? deviceConfig,
    DeviceType? deviceType,
    Iterable<DimenConfigData> dimens = const [],
    // CONSTRAINT DIMENS
    DimenConfig<ConstraintDimens> button = DefaultConfigs.button,
    DimenConfig<ConstraintDimens> image = DefaultConfigs.image,
    DimenConfig<ConstraintDimens> screen = DefaultConfigs.screen,
    // SIZE DIMENS
    DimenConfig<SizeDimens> corner = DefaultConfigs.corner,
    DimenConfig<SizeDimens> divider = DefaultConfigs.divider,
    DimenConfig<SizeDimens> fontSize = DefaultConfigs.fontSize,
    DimenConfig<SizeDimens> icon = DefaultConfigs.icon,
    DimenConfig<SizeDimens> margin = DefaultConfigs.margin,
    DimenConfig<SizeDimens> padding = DefaultConfigs.padding,
    DimenConfig<SizeDimens> spacing = DefaultConfigs.spacing,
    DimenConfig<SizeDimens> stroke = DefaultConfigs.stroke,
    // WEIGHT DIMENS
    DimenConfig<WeightDimens> fontWeight = DefaultConfigs.fontWeight,
  })  : _config = deviceConfig,
        _type = deviceType {
    // CONFIGS
    if (dimens.isNotEmpty) {
      _dimens.addEntries(dimens.map((e) => MapEntry(e.name, e.config)));
    }
    // CONSTRAINT DIMENS
    _dimens[DimenKeys.button] = button;
    _dimens[DimenKeys.image] = image;
    _dimens[DimenKeys.screen] = screen;
    // SIZE DIMENS
    _dimens[DimenKeys.corner] = corner;
    _dimens[DimenKeys.divider] = divider;
    _dimens[DimenKeys.fontSize] = fontSize;
    _dimens[DimenKeys.icon] = icon;
    _dimens[DimenKeys.margin] = margin;
    _dimens[DimenKeys.padding] = padding;
    _dimens[DimenKeys.spacing] = spacing;
    _dimens[DimenKeys.stroke] = stroke;
    // WEIGHT DIMENS
    _dimens[DimenKeys.fontWeight] = fontWeight;
  }
}
