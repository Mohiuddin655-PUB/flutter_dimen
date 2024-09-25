import 'package:app_dimen/app_dimen.dart';

class DefaultConfigs {
  const DefaultConfigs._();

  // CONSTRAINT DIMENS
  static const appbar = DimenConfig(
    mobile: ConstraintDimen(
      normal: ConstraintDimenData(
        width: double.infinity,
        height: 54,
        maxHeight: 60,
        minHeight: 40,
      ),
    ),
  );
  static const bottom = DimenConfig(
    mobile: ConstraintDimen(
      normal: ConstraintDimenData(
        width: double.infinity,
        height: 54,
        maxHeight: 60,
        minHeight: 40,
      ),
    ),
  );
  static const button = DimenConfig(
    mobile: ConstraintDimen(
      normal: ConstraintDimenData(
        maxHeight: 60,
        minHeight: 40,
        height: 50,
      ),
    ),
  );
  static const image = DimenConfig(
    mobile: ConstraintDimen(),
  );
  static const scaffold = DimenConfig(
    mobile: ConstraintDimen(),
  );

  // SIZE DIMENS

  static const avatar = DimenConfig(
    mobile: SizeDimen.avatar(),
  );
  static const corner = DimenConfig(
    mobile: SizeDimen.corner(),
  );
  static const divider = DimenConfig(
    mobile: SizeDimen.divider(),
  );
  static const fontSize = DimenConfig(
    mobile: SizeDimen.font(),
  );
  static const icon = DimenConfig(
    mobile: SizeDimen.icon(),
  );
  static const indicator = DimenConfig(
    mobile: SizeDimen.indicator(),
  );
  static const logo = DimenConfig(
    mobile: SizeDimen.logo(),
  );
  static const margin = DimenConfig(
    mobile: SizeDimen.margin(),
  );
  static const padding = DimenConfig(
    mobile: SizeDimen.padding(),
  );
  static const size = DimenConfig(
    mobile: SizeDimen.size(),
  );
  static const spacing = DimenConfig(
    mobile: SizeDimen.space(),
  );
  static const stroke = DimenConfig(
    mobile: SizeDimen.stroke(),
  );

  // WEIGHT DIMENS
  static const fontWeight = DimenConfig(
    mobile: WeightDimen(),
  );
}
