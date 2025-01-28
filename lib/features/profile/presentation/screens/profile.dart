import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:rent_n_hire/core/theme/styles.dart';

import '../../../../shared/providers/theme_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: appbartitlestyle,
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                ref.watch(themeNotifierProvider.notifier).toggleTheme();
              },
              child: const Text('Toggle Theme')),
          const Gap(10),
          ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              child: const Text('Log out')),
        ],
      ),
    );
  }
}
