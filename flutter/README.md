FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Central African Republic to view examples:

https://platexample.ir/#/discover/centralafricanrepublic

# central_african_republic_plate

Central African Republic's licence plates for the `plate_core` library. The black-on-white CEMAC plate, its theme, alphabets and an advisory validator.

## Install

```yaml
dependencies:
  plate_core: ^0.12.0
  central_african_republic_plate: ^0.1.0
```

## Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:central_african_republic_plate/central_african_republic_plate.dart';

PlateCanvas(
  spec: CentralAfricanRepublicPlates.private,
  theme: CentralAfricanRepublicThemes.private,
  validator: const CentralAfricanRepublicValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Contains

- `CentralAfricanRepublicCountry` — country panel: `centralAfricanRepublic`.
- `CentralAfricanRepublicPlates` — 1 plate spec: `private`.
- `CentralAfricanRepublicThemes` — 1 theme: `private`.
- `CentralAfricanRepublicValidator` — advisory validator; flags the frame, never blocks a keystroke.
- `CentralAfricanRepublicRegions` — code table.

## Plates

Central African Republic's current (CEMAC, 2006) private plate:
`BB 534 DG`, groups `series`, `serial`, `prefecture`, with the CEMAC
emblem and "RCA" at the left.

Not implemented: temporary (red, `TA123BV`) and diplomatic (green) plates
and the older black and blue series; the article has no picture of them.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

