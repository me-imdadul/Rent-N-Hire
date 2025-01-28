import 'package:flutter/material.dart';
import 'package:rent_n_hire/core/constants/colors.dart';

class LoadingDialogWidget extends StatelessWidget {
  final String title;
  const LoadingDialogWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.white,
      content: ListTile(
        leading: const CircularProgressIndicator(
          color: kyellow,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
