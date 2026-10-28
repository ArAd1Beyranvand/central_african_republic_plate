import 'package:central_african_republic_plate/central_african_republic_plate.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plate_core/plate_core.dart';

void main() {
  test('a full prefecture code names the prefecture', () {
    expect(CentralAfricanRepublicRegions.lookup('BG'), 'Bangui');
    expect(CentralAfricanRepublicRegions.lookup('MP'), "Ombella-M'Poko");
    expect(CentralAfricanRepublicRegions.lookup('VK'), 'Vakaga');
  });

  test('a first letter names it only when unambiguous', () {
    expect(CentralAfricanRepublicRegions.lookup('K'), 'Kémo');
    expect(CentralAfricanRepublicRegions.lookup('V'), 'Vakaga');
    for (final String code in <String>['B', 'H', 'M', 'U', '']) {
      expect(CentralAfricanRepublicRegions.lookup(code), isNull, reason: code);
    }
  });

  test('unissued codes name nothing', () {
    for (final String code in <String>['AA', 'BX', 'TA', 'Z']) {
      expect(CentralAfricanRepublicRegions.lookup(code), isNull, reason: code);
    }
  });

  test('the controller follows each letter typed and deleted', () {
    final PlateController c = PlateController(
      spec: CentralAfricanRepublicPlates.private,
    );
    expect(c.regionCaption, isNull);
    c.setGroup('prefecture', 'H');
    expect(c.regionCaption, isNull);
    c.setGroup('prefecture', 'HK');
    expect(c.regionCaption, 'Haute-Kotto');
    c.setGroup('prefecture', 'H');
    expect(c.regionCaption, isNull);
  });
}
