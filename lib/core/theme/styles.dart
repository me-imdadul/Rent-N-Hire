import 'package:flutter/material.dart';
import 'package:rent_n_hire/core/constants/colors.dart';

// Login btn
final authbtnstyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    fixedSize: const Size(double.infinity, 50),
    foregroundColor: Colors.white,
    backgroundColor: const Color.fromARGB(255, 245, 154, 18));

// Login google btn
final googlebtnstyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: kyellow)),
    fixedSize: const Size(double.infinity, 50),
    foregroundColor: Colors.black45,
    backgroundColor: Colors.grey.shade100);
// Appbar title
const appbartitlestyle =
    TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.bold);
