import 'dart:math';

import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'central_african_republic_country.dart';
import 'central_african_republic_regions.dart';

/// Where the ink sits, in plate units.
///
/// The article gives no size; the one reference is a photograph flattened to
/// 520×110 (aspect 4.65 fit, confident) and projected onto each axis.
///
/// Ink y 15–97.8 (centre 56.4). Runs: "BB" 85.2–131.5, 136.5–182.8 (centres
/// 108.4, 159.7); "534" 216–262.8, 266–312, 316.5–363.2 (239.4, 289, 339.9);
/// "DG" 400.8–447.5, 452.8–499 (424.2, 475.9). Emblem roundel x 21.5–70,
/// y 15–62; "RCA" x 24.7–65.8, y 69–97.5 (ink 28.6 tall).
///
/// The reference ink is ~83 tall on a 110 plate; reproducing it needs a
/// ~150-unit box, so the box is capped at [box] and the ink lands near 65%.
/// The CEMAC emblem is left blank: no vector is published.
abstract final class _Layout {
  static const double width = 520, height = 110;
  static const double box = 104;
  static const double cy = 56.4;

  static const PlateBox rca = PlateBox(22, 66, 48, 34);
  static const double rcaGlyph = 44;
}

/// Central African Republic's current (CEMAC, 2006) private plate:
/// `BB 534 DG`, groups `series`, `serial`, `prefecture`, with the CEMAC
/// emblem and "RCA" at the left.
///
/// Not implemented: temporary (red, `TA123BV`) and diplomatic (green) plates
/// and the older black and blue series; the article has no picture of them.
abstract final class CentralAfricanRepublicPlates {
  static final PlateSpec private = _spec();

  static List<PlateSpec> get all => <PlateSpec>[private];

  static PlateSpec _spec() {
    final List<PlateSlot> slots = <PlateSlot>[];
    final List<PlateTextGroup> groups = <PlateTextGroup>[];
    void run(
      String key,
      PlateAlphabet alphabet,
      int count,
      double cx,
      double pitch,
    ) {
      groups.add(PlateTextGroup(<int>[slots.length], key: key));
      slots.add(
        PlateSlot(
          alphabet: alphabet,
          box: PlateBox(
            cx - pitch / 2,
            _Layout.cy - _Layout.box / 2,
            count * pitch,
            _Layout.box,
          ),
          length: count,
          spacing: max(0, pitch - 0.6 * 0.72 * _Layout.box),
        ),
      );
    }

    run('series', CentralAfricanRepublicAlphabets.letters, 2, 108.4, 51.3);
    run('serial', CentralAfricanRepublicAlphabets.digits, 3, 239.4, 50.2);
    run('prefecture', CentralAfricanRepublicAlphabets.letters, 2, 424.2, 51.7);
    return PlateSpec(
      id: 'cf.private',
      country: CentralAfricanRepublicCountry.centralAfricanRepublic,
      canvasWidth: _Layout.width,
      canvasHeight: _Layout.height,
      panel: const PlatePanel(box: PlateBox(0, 0, 0, 0)),
      noPanel: true,
      slots: slots,
      labels: const <PlateLabel>[
        PlateLabel(
          text: 'RCA',
          box: _Layout.rca,
          glyphHeight: _Layout.rcaGlyph,
        ),
      ],
      textGroups: groups,
      resolveRegion: CentralAfricanRepublicRegions.captionOf,
    );
  }
}
