FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Central African Republic to view examples:

https://platexample.ir/#/discover/centralafricanrepublic:flutter

# central_african_republic_plate

Central African Republic's licence plates for the plate_core library: the black-on-white CEMAC plate, a theme, alphabets and an advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/central_african_republic_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/centralafricanrepublic:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/central_african_republic_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/centralafricanrepublic:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/central_african_republic_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/centralafricanrepublic:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/central_african_republic_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/centralafricanrepublic:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  central_african_republic_plate: ^0.1.0
```

### Use

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

## Specs

Each spec is one plate layout.

- `CentralAfricanRepublicPlates.private`

## Themes

- `CentralAfricanRepublicThemes.private`

## Change it

`PlateCanvas` takes `spec:` (an entry of `CentralAfricanRepublicPlates`) and `theme:` (an entry of `CentralAfricanRepublicThemes`). Set `validator:` to `CentralAfricanRepublicValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `CentralAfricanRepublicCountry` — the country panel.
- `CentralAfricanRepublicValidator` — the plate validator.
- `CentralAfricanRepublicRegions` — code table.

## Plates

Central African Republic's current (CEMAC, 2006) private plate:
`BB 534 DG`, groups `series`, `serial`, `prefecture`, with the CEMAC
emblem and "RCA" at the left.

Not implemented: temporary (red, `TA123BV`) and diplomatic (green) plates
and the older black and blue series; the article has no picture of them.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/central_african_republic_plate/blob/main/LICENSE).
