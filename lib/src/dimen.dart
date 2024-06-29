import 'package:app_dimen/app_dimen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_config/config.dart';

const _kBorder = "border";
const _kCorner = "corners";
const _kDivider = "divider";
const _kFontSize = "font_size";
const _kFontWeight = "font_weight";
const _kIcon = "icon";
const _kImage = "image";
const _kMargin = "margin";
const _kPadding = "padding";
const _kSize = "size";
const _kSpacing = "spacing";

typedef DimenConfigs<T extends Dimens> = Map<String, DimenConfig<T>?>;

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

class DimenConfigData<T extends Dimens> {
  final String name;
  final DimenConfig<T> config;

  const DimenConfigData({
    required this.name,
    required this.config,
  });
}

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

  static DimenConfig<T>? of<T extends Dimens>(String name) {
    final x = _i?._dimens[name];
    if (x is DimenConfig<T>) return x;
    return null;
  }

  static void init({
    DeviceConfig? deviceConfig,
    DeviceType? deviceType,
    DimenConfig<SizeDimens>? border,
    DimenConfig<RadiusDimens>? corner,
    DimenConfig<SizeDimens>? divider,
    DimenConfig<FontDimens>? fontSize,
    DimenConfig<WeightDimens>? fontWeight,
    DimenConfig<IconDimens>? icon,
    DimenConfig<SizeDimens>? image,
    DimenConfig<SpacingDimens>? margin,
    DimenConfig<SpacingDimens>? padding,
    DimenConfig<SizeDimens>? size,
    DimenConfig<SpacingDimens>? spacing,
    final Iterable<DimenConfigData> dimens = const [],
  }) {
    _i = Dimen._(
      deviceType: deviceType,
      deviceConfig: deviceConfig,
      border: border,
      corner: corner,
      divider: divider,
      fontSize: fontSize,
      fontWeight: fontWeight,
      icon: icon,
      image: image,
      margin: margin,
      padding: padding,
      size: size,
      spacing: spacing,
      dimens: dimens,
    );
  }

  void createInstance() => _i = this;

  Dimen._({
    DeviceConfig? deviceConfig,
    DeviceType? deviceType,
    DimenConfig<SizeDimens>? border,
    DimenConfig<RadiusDimens>? corner,
    DimenConfig<SizeDimens>? divider,
    DimenConfig<FontDimens>? fontSize,
    DimenConfig<WeightDimens>? fontWeight,
    DimenConfig<IconDimens>? icon,
    DimenConfig<SizeDimens>? image,
    DimenConfig<SpacingDimens>? margin,
    DimenConfig<SpacingDimens>? padding,
    DimenConfig<SizeDimens>? size,
    DimenConfig<SpacingDimens>? spacing,
    final Iterable<DimenConfigData> dimens = const [],
  })  : _config = deviceConfig,
        _type = deviceType {
    if (border != null) _dimens[_kBorder] = border;
    if (corner != null) _dimens[_kCorner] = corner;
    if (divider != null) _dimens[_kDivider] = divider;
    if (fontSize != null) _dimens[_kFontSize] = fontSize;
    if (fontWeight != null) _dimens[_kFontWeight] = fontWeight;
    if (icon != null) _dimens[_kIcon] = icon;
    if (image != null) _dimens[_kImage] = image;
    if (margin != null) _dimens[_kMargin] = margin;
    if (padding != null) _dimens[_kPadding] = padding;
    if (size != null) _dimens[_kSize] = size;
    if (spacing != null) _dimens[_kSpacing] = spacing;
    if (dimens.isNotEmpty) {
      _dimens.addEntries(dimens.map((e) => MapEntry(e.name, e.config)));
    }
  }

  Dimen({
    DeviceConfig? deviceConfig,
    DeviceType? deviceType,
    DimenConfig<SizeDimens>? border,
    DimenConfig<RadiusDimens>? corner,
    DimenConfig<SizeDimens>? divider,
    DimenConfig<FontDimens>? fontSize,
    DimenConfig<WeightDimens>? fontWeight,
    DimenConfig<IconDimens>? icon,
    DimenConfig<SizeDimens>? image,
    DimenConfig<SpacingDimens>? margin,
    DimenConfig<SpacingDimens>? padding,
    DimenConfig<SizeDimens>? size,
    DimenConfig<SpacingDimens>? spacing,
    final Iterable<DimenConfigData> dimens = const [],
  }) : this._(
          deviceConfig: deviceConfig,
          deviceType: deviceType,
          border: border,
          corner: corner,
          divider: divider,
          fontSize: fontSize,
          fontWeight: fontWeight,
          icon: icon,
          image: image,
          margin: margin,
          padding: padding,
          size: size,
          spacing: spacing,
          dimens: dimens,
        );

  Device _device(Size size) {
    final x = _config ?? DeviceConfig.i;
    if (_type != null) return x.deviceFromType(_type!);
    return x.device(size.width, size.height);
  }

  DimenConfig<SizeDimens>? get border => of(_kBorder);

  DimenConfig<RadiusDimens>? get corner => of(_kCorner);

  DimenConfig<SizeDimens>? get divider => of(_kDivider);

  DimenConfig<FontDimens>? get fontSize => of(_kFontSize);

  DimenConfig<WeightDimens>? get fontWeight => of(_kFontWeight);

  DimenConfig<SpacingDimens>? get margin => of(_kMargin);

  DimenConfig<SpacingDimens>? get padding => of(_kPadding);

  DimenConfig<SizeDimens>? get size => of(_kSize);

  DimenConfig<SpacingDimens>? get spacing => of(_kSpacing);
}

extension DimenHelper on BuildContext {
  Size get _size => MediaQuery.sizeOf(this);

  Device get _device => Dimen.i._device(_size);

  FontDimens fontDimenOf(String name) {
    final device = _device;
    final scaleFactor = device.fontScaleFactor;
    final x = Dimen.of<FontDimens>(name)?.detect(device.type);
    if (x != null) return x.scale(scaleFactor);
    return const FontDimens().scale(scaleFactor);
  }

  IconDimens iconDimenOf(String name) {
    final device = _device;
    final scaleFactor = device.fontScaleFactor;
    final x = Dimen.of<IconDimens>(name)?.detect(device.type);
    if (x != null) return x.scale(scaleFactor);
    return const IconDimens().scale(scaleFactor);
  }

  RadiusDimens radiusDimenOf(String name) {
    final device = _device;
    final scaleFactor = device.radiusScaleFactor;
    final x = Dimen.of<RadiusDimens>(name)?.detect(device.type);
    if (x != null) return x.scale(scaleFactor);
    return const RadiusDimens().scale(scaleFactor);
  }

  SizeDimens sizeDimenOf(String name) {
    final device = _device;
    final scaleFactor = device.sizeScaleFactor;
    final x = Dimen.of<SizeDimens>(name)?.detect(device.type);
    if (x != null) return x.scale(scaleFactor);
    return const SizeDimens().scale(scaleFactor);
  }

  SpacingDimens spacingDimenOf(String name) {
    final device = _device;
    final scaleFactor = device.spacingScaleFactor;
    final x = Dimen.of<SpacingDimens>(name)?.detect(device.type);
    if (x != null) return x.scale(scaleFactor);
    return const SpacingDimens().scale(scaleFactor);
  }

  WeightDimens weightDimenOf(String name) {
    final device = _device;
    final scaleFactor = device.weightScaleFactor;
    final x = Dimen.of<WeightDimens>(name)?.detect(device.type);
    if (x != null) return x.scale(scaleFactor);
    return const WeightDimens().scale(scaleFactor);
  }

  SizeDimens get borders => sizeDimenOf(_kBorder).defaults(normal: 1);

  RadiusDimens get corners => radiusDimenOf(_kCorner);

  SizeDimens get dividers => sizeDimenOf(_kCorner);

  FontDimens get fontSizes => fontDimenOf(_kFontSize);

  WeightDimens get fontWeights => weightDimenOf(_kFontWeight);

  IconDimens get icons => iconDimenOf(_kIcon);

  SizeDimens get images => sizeDimenOf(_kImage);

  SpacingDimens get margins => spacingDimenOf(_kMargin);

  SpacingDimens get paddings => spacingDimenOf(_kPadding);

  SizeDimens get sizes {
    return sizeDimenOf(_kSize).defaults(
      maxWidth: _size.width,
      maxHeight: _size.height,
    );
  }

  SpacingDimens get spacings => spacingDimenOf(_kSpacing);
}
