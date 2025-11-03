import 'package:chat_karo/components/common_chat_card.dart';
import 'package:chat_karo/components/common_scafold.dart';
import 'package:flutter/material.dart';

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
      search: true,
      bottomNavIndex: 0,
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
      ],
      floatingBar: true,
      floatingIcon: Icons.add,
      onFloatingButtonPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: ListView.builder(
          itemBuilder: (context, index) => CommonChatCard(),
          itemCount: 10,
        ),
      ),
    );
  }
}
