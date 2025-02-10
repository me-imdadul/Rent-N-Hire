import 'package:flutter/material.dart';

bool isDakMode(context) {
  return Theme.of(context).brightness == Brightness.dark;
}
