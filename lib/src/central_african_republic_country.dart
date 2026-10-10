import 'package:plate_core/plate_core.dart';

import 'central_african_republic_colors.dart';

/// The Central African Republic as a `PlateCountry`. The CEMAC block is
/// labels on the face, so every spec sets `noPanel`.
abstract final class CentralAfricanRepublicCountry {
  static const PlateCountry centralAfricanRepublic = PlateCountry(
    code: 'cf',
    captionLines: <String>[],
    panelColor: CentralAfricanRepublicColors.white,
    panelTextColor: CentralAfricanRepublicColors.black,
  );
}
