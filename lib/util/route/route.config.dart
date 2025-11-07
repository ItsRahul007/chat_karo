import 'package:chat_karo/screens/add_new/add_new.dart';
import 'package:chat_karo/screens/calls/calls.dart';
import 'package:chat_karo/screens/chat/chat_page.dart';
import 'package:chat_karo/screens/error/error.dart';
import 'package:chat_karo/screens/home/home.dart';
import 'package:chat_karo/screens/setting/setting.dart';
import 'package:chat_karo/screens/updates/updates.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final myRouterConfig = GoRouter(
  initialLocation: MyRoutes.home,
  debugLogDiagnostics: true,
  errorPageBuilder: (context, state) =>
      MaterialPage(child: ErrorPage(errorMessage: state.error.toString())),
  routes: [
    GoRoute(path: MyRoutes.home, builder: (context, state) => const Home()),
    GoRoute(
      path: "${MyRoutes.chat}/:chatId",
      builder: (context, state) {
        final chatId = state.pathParameters['chatId'];
        return ChatPage(chatId: chatId!);
      },
    ),
    GoRoute(
      path: MyRoutes.error,
      builder: (context, state) {
        return ErrorPage(errorMessage: state.error.toString());
      },
    ),
    GoRoute(path: MyRoutes.updates, builder: (context, state) => Updates()),
    GoRoute(path: MyRoutes.calls, builder: (context, state) => Calls()),
    GoRoute(path: MyRoutes.setting, builder: (context, state) => Setting()),
    GoRoute(
      path: MyRoutes.addNew,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: AddNew(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
      },
    ),
  ],
);

class MyRoutes {
  MyRoutes._();

  static const String home = '/';
  static const String chat = '/chat';
  static const String error = '/error';
  static const String updates = '/updates';
  static const String calls = '/calls';
  static const String setting = '/setting';
  static const String addNew = '/add-new';
}
