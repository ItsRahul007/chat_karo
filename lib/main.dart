import 'package:chat_karo/util/route/route.config.dart';
import 'package:chat_karo/util/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: myRouterConfig,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
