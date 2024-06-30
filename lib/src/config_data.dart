import 'config.dart';
import 'dimens.dart';

class DimenConfigData<T extends Dimens> {
  final String name;
  final DimenConfig<T> config;

  const DimenConfigData({
    required this.name,
    required this.config,
  });

  DimenConfigData.normalize({
    required String name,
    required T mobile,
    T? tablet,
    T? laptop,
    T? desktop,
    T? watch,
    T? tv,
  }) : this(
          name: name,
          config: DimenConfig(
            mobile: mobile,
            tablet: tablet,
            laptop: laptop,
            desktop: desktop,
            watch: watch,
            tv: tv,
          ),
        );
}
