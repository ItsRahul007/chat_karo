import 'package:chat_karo/components/common_chat_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Can't find out?",
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.tertiary,
                  hintStyle: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            ...List.generate(
              40,
              (int index) => index,
            ).map((e) => const CommonChatCard()),
          ],
        ),
      ),
    );
  }
}
