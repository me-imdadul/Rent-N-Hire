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

// Appbar title
const appbartitlestyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
