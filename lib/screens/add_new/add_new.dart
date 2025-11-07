import 'package:chat_karo/screens/add_new/add_new_body.dart';
import 'package:flutter/material.dart';

class AddNew extends StatelessWidget {
  const AddNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New Chat')),
      body: const AddNewBody(),
    );
  }
}
