import 'package:go_router/go_router.dart';
import 'package:rent_n_hire/features/authentication/presentation/screens/login.dart';
import 'package:rent_n_hire/features/explore/presentation/screens/explore.dart';
import 'package:rent_n_hire/features/profile/presentation/screens/profile.dart';
import 'package:rent_n_hire/routing/routes.dart';
import 'package:rent_n_hire/shared/widgets/bottom_nav_bar.dart';
import 'package:rent_n_hire/features/home/presentation/home.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.login,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomNavBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.home,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.explore,
                builder: (context, state) => const ExploreScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: Routes.setting,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.login,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
