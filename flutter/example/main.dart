import 'package:flutter/material.dart';
import 'package:central_african_republic_plate/central_african_republic_plate.dart';
import 'package:plate_core/plate_core.dart';

void main() => runApp(const ExampleApp());

/// Shows one editable plate: tap a slot and type to fill it in.
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: PlateCanvas(
              spec: CentralAfricanRepublicPlates.private,
              theme: CentralAfricanRepublicThemes.private,
              onChooseCharacter: (alphabet) async => null,
            ),
          ),
        ),
      ),
    );
  }
}
