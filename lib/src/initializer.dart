import 'package:flutter/material.dart';
import 'package:flutter_device_config/config.dart';

import 'config.dart';
import 'config_data.dart';
import 'constraint.dart';
import 'defaults.dart';
import 'dimen.dart';
import 'keys.dart';
import 'size.dart';
import 'weight.dart';

typedef DimenConfigs = Map<String, DimenConfig>;

class DimenInitializer {
  final DeviceType? _type;
  final DeviceConfig? _config;
  final DimenConfigs _dimens = {};

  static DimenInitializer? _i;

  static bool get isInstance => _i != null;

  static DimenInitializer get i {
    if (isInstance) {
      return _i!;
    } else {
      throw UnimplementedError("$DimenInitializer not initialized yet!");
    }
  }

  static Size? assumedSize(Size size) => _i?.device(size).assumedSize;

  Device device(Size size) {
    final x = _config ?? DeviceConfig.i;
    if (_type != null) return x.deviceFromType(_type!);
    return x.device(size.width, size.height);
  }

  static DimenConfig? _of(String name) => _i?._dimens[name];

  static T of<T extends Dimen>(String name, Size size, [T? initial]) {
    final device = i.device(size);
    final scaleFactor = device.fontScaleFactor;
    final x = _of(name)?.detect(device.type);
    if (x is ConstraintDimen) {
      return x.scale(scaleFactor) as T;
    } else if (x is SizeDimen) {
      return x.scale(scaleFactor) as T;
    } else if (x is WeightDimen) {
      return x.scale(scaleFactor) as T;
    } else if (initial != null) {
      return initial;
    }
    throw UnimplementedError("$T not initialized yet for $name");
  }

  static ConstraintDimen constraintOf(
    String name,
    Size size, {
    ConstraintDimenData? defaults,
    bool defaultScalable = false,
  }) {
    final device = i.device(size);
    final scaleFactor = device.sizeScaleFactor;
    final x = _of(name)?.detect(device.type);
    final y = x is ConstraintDimen ? x : const ConstraintDimen.none();
    final z = defaultScalable && defaults != null ? y : y.scale(scaleFactor);
    final m = defaults != null ? z.defaults(defaults) : z;
    return defaultScalable ? m.scale(scaleFactor) : m;
  }

  static SizeDimen sizeOf(String name, Size size) {
    final device = i.device(size);
    final scaleFactor = device.sizeScaleFactor;
    final x = _of(name)?.detect(device.type);
    final y = x is SizeDimen ? x : const SizeDimen.zero();
    return y.scale(scaleFactor);
  }

  static WeightDimen weightOf(String name, Size size) {
    final device = i.device(size);
    final scaleFactor = device.weightScaleFactor;
    final x = _of(name)?.detect(device.type);
    final y = x is WeightDimen ? x : const WeightDimen();
    return y.scale(scaleFactor);
  }

  static DimenInitializer init({
    // CONFIGS
    DeviceConfig? deviceConfig,
    DeviceType? deviceType,
    Iterable<DimenConfigData> dimens = const [],
    // CONSTRAINT DIMENS
    DimenConfig<ConstraintDimen> appbar = DefaultConfigs.appbar,
    DimenConfig<ConstraintDimen> bottom = DefaultConfigs.bottom,
    DimenConfig<ConstraintDimen> button = DefaultConfigs.button,
    DimenConfig<ConstraintDimen> image = DefaultConfigs.image,
    DimenConfig<ConstraintDimen> scaffold = DefaultConfigs.scaffold,
    // SIZE DIMENS
    DimenConfig<SizeDimen> avatar = DefaultConfigs.avatar,
    DimenConfig<SizeDimen> corner = DefaultConfigs.corner,
    DimenConfig<SizeDimen> divider = DefaultConfigs.divider,
    DimenConfig<SizeDimen> fontSize = DefaultConfigs.fontSize,
    DimenConfig<SizeDimen> icon = DefaultConfigs.icon,
    DimenConfig<SizeDimen> indicator = DefaultConfigs.indicator,
    DimenConfig<SizeDimen> logo = DefaultConfigs.logo,
    DimenConfig<SizeDimen> margin = DefaultConfigs.margin,
    DimenConfig<SizeDimen> padding = DefaultConfigs.padding,
    DimenConfig<SizeDimen> size = DefaultConfigs.size,
    DimenConfig<SizeDimen> spacing = DefaultConfigs.spacing,
    DimenConfig<SizeDimen> stroke = DefaultConfigs.stroke,
    // WEIGHT DIMENS
    DimenConfig<WeightDimen> fontWeight = DefaultConfigs.fontWeight,
  }) {
    _i = DimenInitializer(
      // CONFIGS
      deviceType: deviceType,
      deviceConfig: deviceConfig,
      dimens: dimens,
      // CONSTRAINT DIMENS
      appbar: appbar,
      bottom: bottom,
      button: button,
      image: image,
      scaffold: scaffold,
      // SIZE DIMENS
      avatar: avatar,
      corner: corner,
      divider: divider,
      fontSize: fontSize,
      icon: icon,
      indicator: indicator,
      logo: logo,
      margin: margin,
      padding: padding,
      size: size,
      spacing: spacing,
      stroke: stroke,
      // WEIGHT DIMENS
      fontWeight: fontWeight,
    );
    return i;
  }

  static void attach({
    Iterable<DimenConfigData> dimens = const [],
  }) {
    if (dimens.isNotEmpty) {
      i._dimens.addEntries(dimens.map((e) => MapEntry(e.name, e.config)));
    }
  }

  void createInstance() => _i = this;

  DimenInitializer({
    // CONFIGS
    DeviceConfig? deviceConfig,
    DeviceType? deviceType,
    Iterable<DimenConfigData> dimens = const [],
    // CONSTRAINT DIMENS
    DimenConfig<ConstraintDimen> appbar = DefaultConfigs.appbar,
    DimenConfig<ConstraintDimen> bottom = DefaultConfigs.bottom,
    DimenConfig<ConstraintDimen> button = DefaultConfigs.button,
    DimenConfig<ConstraintDimen> image = DefaultConfigs.image,
    DimenConfig<ConstraintDimen> scaffold = DefaultConfigs.scaffold,
    // SIZE DIMENS
    DimenConfig<SizeDimen> avatar = DefaultConfigs.avatar,
    DimenConfig<SizeDimen> corner = DefaultConfigs.corner,
    DimenConfig<SizeDimen> divider = DefaultConfigs.divider,
    DimenConfig<SizeDimen> fontSize = DefaultConfigs.fontSize,
    DimenConfig<SizeDimen> icon = DefaultConfigs.icon,
    DimenConfig<SizeDimen> indicator = DefaultConfigs.indicator,
    DimenConfig<SizeDimen> logo = DefaultConfigs.logo,
    DimenConfig<SizeDimen> margin = DefaultConfigs.margin,
    DimenConfig<SizeDimen> padding = DefaultConfigs.padding,
    DimenConfig<SizeDimen> size = DefaultConfigs.size,
    DimenConfig<SizeDimen> spacing = DefaultConfigs.spacing,
    DimenConfig<SizeDimen> stroke = DefaultConfigs.stroke,
    // WEIGHT DIMENS
    DimenConfig<WeightDimen> fontWeight = DefaultConfigs.fontWeight,
  })  : _config = deviceConfig,
        _type = deviceType {
    // CONSTRAINT DIMENS
    _dimens[DefaultDimenKeys.appbar] = appbar;
    _dimens[DefaultDimenKeys.bottom] = bottom;
    _dimens[DefaultDimenKeys.button] = button;
    _dimens[DefaultDimenKeys.image] = image;
    _dimens[DefaultDimenKeys.scaffold] = scaffold;
    // SIZE DIMENS
    _dimens[DefaultDimenKeys.avatar] = avatar;
    _dimens[DefaultDimenKeys.corner] = corner;
    _dimens[DefaultDimenKeys.divider] = divider;
    _dimens[DefaultDimenKeys.fontSize] = fontSize;
    _dimens[DefaultDimenKeys.icon] = icon;
    _dimens[DefaultDimenKeys.indicator] = indicator;
    _dimens[DefaultDimenKeys.logo] = logo;
    _dimens[DefaultDimenKeys.margin] = margin;
    _dimens[DefaultDimenKeys.padding] = padding;
    _dimens[DefaultDimenKeys.size] = size;
    _dimens[DefaultDimenKeys.space] = spacing;
    _dimens[DefaultDimenKeys.stroke] = stroke;
    // WEIGHT DIMENS
    _dimens[DefaultDimenKeys.fontWeight] = fontWeight;
    // CONFIGS
    if (dimens.isNotEmpty) {
      _dimens.addEntries(dimens.map((e) => MapEntry(e.name, e.config)));
    }
  }
}
