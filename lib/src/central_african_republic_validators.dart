import 'package:plate_core/plate_core.dart';

final RegExp _letters = RegExp(r'^[A-Z]{2}$');

/// Judges a Central African plate: `BB 534 DG` — two letters, three digits
/// (001–999), two letters naming the prefecture. Reports, never bars a
/// keystroke.
class CentralAfricanRepublicValidator extends GatedPlateValidator {
  const CentralAfricanRepublicValidator();

  @override
  String get gateGroup => 'serial';

  @override
  PlateValidation judge(PlateEntry entry) {
    if (!_letters.hasMatch(entry.group('series'))) {
      return const PlateValidation.invalid('The series is 2 letters.');
    }
    final String serial = entry.group('serial');
    if (!isDigitsOfLength(serial, 3) || serial == '000') {
      return const PlateValidation.invalid('The number is 001 to 999.');
    }
    if (!_letters.hasMatch(entry.group('prefecture'))) {
      return const PlateValidation.invalid('The prefecture is 2 letters.');
    }
    return const PlateValidation.valid();
  }
}
