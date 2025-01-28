import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rent_n_hire/core/di/injection_container.dart';
import 'package:rent_n_hire/core/theme/app_theme.dart';
import 'package:rent_n_hire/routing/app_router.dart';

import 'shared/providers/theme_provider.dart';

void main() {
  init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      theme: appLightTheme,
      themeMode: themeMode,
      darkTheme: appDarkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
