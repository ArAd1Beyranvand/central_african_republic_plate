import 'package:plate_core/plate_core.dart';

// TODO(py): [H9] Python re: \d/\w match Unicode; keep explicit [0-9]/[A-Z] classes (or re.ASCII).
// TODO(ts): [H9] same flavour as Dart; port as is, cover accept/reject in the vectors (D9).
// TODO(kt): [H9] Regex engine differs per target (JVM/JS/Native): keep to portable syntax.
final RegExp _letters = RegExp(r'^[A-Z]{2}$');

// TODO(py): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(ts): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(kt): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
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
