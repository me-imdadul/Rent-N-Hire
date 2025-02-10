import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:iconly/iconly.dart';
import 'package:rent_n_hire/core/constants/colors.dart';
import 'package:rent_n_hire/core/constants/sizes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 20,
        title: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: kwhite,
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10)
              ],
              borderRadius: BorderRadius.circular(AppSizes.cardradius)),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyLight.arrow_left_2,
                    color: kyellow,
                    size: AppSizes.iconsize,
                  )),
              const Gap(10),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Search here",
                    hintStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade500)),
              )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyLight.filter,
                    color: kyellow,
                    size: AppSizes.iconsize,
                  ))
            ],
          ),
        ),
      ),
      body: const Center(child: Text("sdsdr")),
    );
  }
}
