import 'package:chat_karo/util/route/route.config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommonChatCard extends StatelessWidget {
  const CommonChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.push("${MyRoutes.chat}/1"),
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.blueGrey.shade700,
        child: const Text("JD"),
      ),
      title: const Text('John Doe'),
      subtitle: Text("Hey, What's up?"),
      trailing: Text("10:30 AM"),
    );
  }
}
