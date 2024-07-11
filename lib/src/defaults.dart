import 'config.dart';
import 'constraint.dart';
import 'size.dart';
import 'weight.dart';

class DefaultConfigs {
  const DefaultConfigs._();

  // CONSTRAINT DIMENS
  static const button = DimenConfig(
    mobile: ConstraintDimens(
      normal: ConstraintDimen(
        maxHeight: 60,
        minHeight: 40,
      ),
    ),
  );
  static const image = DimenConfig(
    mobile: ConstraintDimens(),
  );
  static const scaffold = DimenConfig(
    mobile: ConstraintDimens(),
  );

  // SIZE DIMENS

  static const corner = DimenConfig(
    mobile: SizeDimens.corner(),
  );
  static const divider = DimenConfig(
    mobile: SizeDimens.divider(),
  );
  static const fontSize = DimenConfig(
    mobile: SizeDimens.font(),
  );
  static const icon = DimenConfig(
    mobile: SizeDimens.icon(),
  );
  static const margin = DimenConfig(
    mobile: SizeDimens.margin(),
  );
  static const padding = DimenConfig(
    mobile: SizeDimens.padding(),
  );
  static const size = DimenConfig(
    mobile: SizeDimens.size(),
  );
  static const spacing = DimenConfig(
    mobile: SizeDimens.spacing(),
  );
  static const stroke = DimenConfig(
    mobile: SizeDimens.stroke(),
  );

  // WEIGHT DIMENS
  static const fontWeight = DimenConfig(
    mobile: WeightDimens(),
  );
}
