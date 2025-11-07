import 'package:flutter/material.dart';

class AddNewBody extends StatelessWidget {
  const AddNewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        TextField(
          autocorrect: false,
          enableSuggestions: false,
          decoration: InputDecoration(
            hintText: "Search email or username",
            filled: true,
            fillColor: Theme.of(context).colorScheme.tertiary,
            hintStyle: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
