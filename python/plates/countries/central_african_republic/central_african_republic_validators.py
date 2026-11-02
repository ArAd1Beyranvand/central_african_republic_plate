"""Port of central_african_republic_plate/lib/src/central_african_republic_validators.dart."""
from __future__ import annotations

import re
from dataclasses import dataclass

from plates.core.validators.plate_validator import GatedPlateValidator, PlateEntry, PlateValidation, is_digits_of_length


@dataclass(frozen=True)
class CentralAfricanRepublicValidator(GatedPlateValidator):
    gate_group = "serial"
    _letters = re.compile(r"^[A-Z]{2}$")

    def judge(self, entry: PlateEntry) -> PlateValidation:
        series = entry.group("series")
        if not self._letters.fullmatch(series):
            return PlateValidation.invalid("The series is 2 letters.")
        serial = entry.group("serial")
        if not is_digits_of_length(serial, 3) or serial == "000":
            return PlateValidation.invalid("The number is 001 to 999.")
        prefecture = entry.group("prefecture")
        if not self._letters.fullmatch(prefecture):
            return PlateValidation.invalid("The prefecture is 2 letters.")
        return PlateValidation.valid()
