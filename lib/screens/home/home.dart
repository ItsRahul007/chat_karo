import 'package:chat_karo/components/common_scafold.dart';
import 'package:chat_karo/screens/home/home_body.dart';
import 'package:chat_karo/util/route/route.config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSearchActive = false;

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      title: 'Chat Karo',
      appBar: true,
      bottomNavIndex: 0,
      actions: [
        IconButton(
          onPressed: () {
            context.push(MyRoutes.setting);
          },
          icon: const Icon(Icons.settings_outlined),
        ),
      ],
      floatingBar: true,
      floatingIcon: Icons.add,
      onFloatingButtonPressed: () {
        context.push(MyRoutes.addNew);
      },
      child: HomeBody(),
    );
  }
}
