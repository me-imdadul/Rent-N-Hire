import 'package:flutter/material.dart';
import 'package:rent_n_hire/core/constants/colors.dart';

final authbtnstyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    fixedSize: Size(double.infinity, 50),
    foregroundColor: Colors.white,
    backgroundColor: const Color.fromARGB(255, 245, 154, 18));
final googlebtnstyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: kyellow)),
    fixedSize: Size(double.infinity, 50),
    foregroundColor: Colors.black45,
    backgroundColor: Colors.grey.shade100);
