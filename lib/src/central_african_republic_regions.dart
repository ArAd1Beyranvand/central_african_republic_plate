/// Locates a plate from its two-letter prefecture code.
///
/// Source: the "Registration codes" section of
/// https://en.wikipedia.org/wiki/Vehicle_registration_plates_of_the_Central_African_Republic
abstract final class CentralAfricanRepublicRegions {
  static const Map<String, String> _codes = <String, String>{
    'BB': 'Bamingui-Bangoran',
    'BG': 'Bangui',
    'BK': 'Basse-Kotto',
    'HB': 'Haut-Mbomou',
    'HK': 'Haute-Kotto',
    'KG': 'Kémo',
    'LB': 'Lobaye',
    'MB': 'Mbomou',
    'MK': 'Mambéré-Kadéï',
    'MP': 'Ombella-M\'Poko',
    'NG': 'Nana-Grébizi',
    'SE': 'Sangha-Mbaéré',
    'UA': 'Ouham',
    'UK': 'Ouaka',
    'UP': 'Ouham-Pendé',
    'VK': 'Vakaga',
  };

  /// The name for [code] (one or two letters), or null when it matches no
  /// code or several.
  static String? lookup(String code) {
    if (code.isEmpty) return null;
    final Set<String> names = <String>{
      for (final MapEntry<String, String> e in _codes.entries)
        if (e.key.startsWith(code)) e.value,
    };
    return names.length == 1 ? names.single : null;
  }

  static String? captionOf(String Function(String key) group) =>
      lookup(group('prefecture'));
}
