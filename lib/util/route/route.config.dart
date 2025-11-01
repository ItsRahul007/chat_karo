import 'package:chat_karo/screens/calls/calls.dart';
import 'package:chat_karo/screens/chat/chat_page.dart';
import 'package:chat_karo/screens/error/error.dart';
import 'package:chat_karo/screens/home/home.dart';
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
  ],
);

class MyRoutes {
  MyRoutes._();

  static const String home = '/';
  static const String chat = '/chat';
  static const String error = '/error';
  static const String updates = '/updates';
  static const String calls = '/calls';
}
