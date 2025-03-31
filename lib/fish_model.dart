import 'package:flutter/material.dart';

class Fish {
  Color color;
  double speed;
  Offset position;
  late AnimationController controller;
  late Animation<Offset> animation;

  Fish({
    required this.color,
    required this.speed,
    required this.position,
  });
}
