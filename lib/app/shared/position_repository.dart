import 'package:flutter/material.dart';
import 'package:ijato/app/shared/position.dart';

class PositionRepository extends ChangeNotifier {
  final List<Position> _positions = [
    Position(
        name: 'Lava Ligeiro',
        address: 'Santa Luzia, 1023 - São Miguel',
        photo: '424',
        latitude: -25.452322,
        longitude: -45.223332),
    Position(
        name: 'Lava Rapido',
        address: 'Santa Maria, 1020 - São Miguel',
        photo: '424',
        latitude: -25.402322,
        longitude: -45.323332)
  ];
}
