import 'package:plate_core/plate_core.dart';

import 'central_african_republic_colors.dart';

/// Black on white. The photo shows no frame line, so the border is a thin
/// 0.02 of the height and the corners round at 0.04; neither is measured.
abstract final class CentralAfricanRepublicThemes {
  static final PlateTheme private = PlateTheme.monochrome(
    field: CentralAfricanRepublicColors.white,
    ink: CentralAfricanRepublicColors.black,
    inactive: CentralAfricanRepublicColors.inactive,
    borderWidthRatio: 0.02,
    plateRadiusRatio: 0.04,
  );
}
