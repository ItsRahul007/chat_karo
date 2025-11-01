import 'package:chat_karo/components/common_scafold.dart';
import 'package:chat_karo/screens/updates/update_body.dart';
import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
      bottomNavIndex: 1,
      title: "Updates",
      appBar: true,
      child: UpdateBody(),
    );
  }
}
