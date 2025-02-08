import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:rent_n_hire/core/constants/colors.dart';
import 'package:text_divider/text_divider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your location',
              style: TextStyle(fontSize: 12),
            ),
            Row(
              children: [
                Text(
                  'Kiling road, Baridua',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 24,
                )
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: kyellow,
                foregroundColor: Colors.white),
            child: const Text(
              'I',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                height: size.height * 0.23,
                width: size.width,
                child: const Placeholder(),
              ),
            ),
            const Gap(10),
            TextDivider(
                text: Text(
              'Explore',
              style: TextStyle(
                  fontSize: 13,
                  color: Theme.of(context).brightness == Brightness.light
                      ? Colors.black54
                      : Colors.grey),
            )),
            const Gap(25),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 140,
                                width: 110,
                                child: Placeholder(),
                              ),
                              const Gap(10),
                              Text(
                                'Category',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.black87
                                        : Colors.grey),
                              )
                            ],
                          ),
                        )),
              ),
            ),
            const Gap(25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black
                            : Colors.grey),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).brightness == Brightness.light
                            ? Colors.black54
                            : Colors.grey),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3 / 4.3,
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12),
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) => Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 230,
                        child: Placeholder(),
                      ),
                      const Gap(10),
                      Text(
                        'Category',
                        style: TextStyle(
                            fontSize: 13,
                            color:
                                Theme.of(context).brightness == Brightness.light
                                    ? Colors.black87
                                    : Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
