import 'package:flutter_gorouter_basic/screens/1_basic_screen.dart';
import 'package:flutter_gorouter_basic/screens/2_named_screen.dart';
import 'package:flutter_gorouter_basic/screens/3_push_screen.dart';
import 'package:flutter_gorouter_basic/screens/root_screen.dart';
import 'package:go_router/go_router.dart';

// https://blog.codefactory.ai/ -> / -> path
// https://blog.codefactory.ai/flutter -> /flutter
// / -> home
// /basic -> basic screen
// /named -> named screen
// /push -> push screen
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const RootScreen();
      },
      routes: [
        GoRoute(
          path: 'basic',
          builder: (context, state) {
            return const BasicScreen();
          },
        ),
        GoRoute(
          path: 'named',
          name: 'named_screen',
          builder: (context, state) {
            return const NamedScreen();
          },
        ),
        GoRoute(
          path: 'push',
          builder: (context, state) {
            return const PushScreen();
          },
        ),
      ],
    ),
  ],
);
