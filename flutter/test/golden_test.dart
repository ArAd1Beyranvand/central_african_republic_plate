import 'package:central_african_republic_plate/central_african_republic_plate.dart';
import 'package:plate_core/testing.dart';

void main() {
  plateGoldens(
    'cf',
    CentralAfricanRepublicCountry.centralAfricanRepublic,
    <String, PlateGoldenCase>{
      'private': (
        CentralAfricanRepublicPlates.private,
        CentralAfricanRepublicThemes.private,
        'BB 534 DG',
      ),
    },
  );
}
