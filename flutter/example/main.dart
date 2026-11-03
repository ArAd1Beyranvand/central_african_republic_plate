import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:central_african_republic_plate/central_african_republic_plate.dart';

void main() => runApp(
  PlateExampleApp(
    spec: CentralAfricanRepublicPlates.private,
    theme: CentralAfricanRepublicThemes.private,
  ),
);
