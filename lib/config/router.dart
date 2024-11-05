import 'package:go_router/go_router.dart';
import '../presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/create",
      builder: (context, state) => const CreateScreen(),
    ),
    GoRoute(
      path: "/profile",
      builder: (context, state) {
        final data = state.extra as Map<String,
            String>?;
        return ProfileScreen(
          name: data?['name'] ?? '',
          age: data?['age'] ?? '',
          occupation: data?['occupation'] ?? '',
        );
      },
    ),
  ],
);
