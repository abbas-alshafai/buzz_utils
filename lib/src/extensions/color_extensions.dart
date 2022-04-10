import 'package:flutter/material.dart';

extension ColorExtensions on Color{
  String toStringExtended() => toString().split('(0x')[1].split(')')[0];
}