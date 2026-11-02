/// Central African Republic's licence plates for the `plate_core` library.
///
/// The black-on-white CEMAC plate, its theme, alphabets and an advisory validator.
library;

// TODO(py): [D5] one module `plates.countries.central_african_republic`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/central_african_republic`; tree-shakable.
// TODO(kt): [D5] package `countries.central_african_republic` in the countries module.
export 'src/central_african_republic_colors.dart';
export 'src/central_african_republic_country.dart';
export 'src/central_african_republic_plates.dart';
export 'src/central_african_republic_regions.dart';
export 'src/central_african_republic_themes.dart';
export 'src/central_african_republic_validators.dart';
export 'package:plate_alphabet/plate_alphabet.dart'
    show CentralAfricanRepublicAlphabets;
