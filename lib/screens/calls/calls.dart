import 'package:chat_karo/components/common_scafold.dart';
import 'package:chat_karo/screens/calls/calls_body.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      bottomNavIndex: 2,
      title: "My Calls",
      appBar: true,
      child: CallsBody(),
    );
  }
}
