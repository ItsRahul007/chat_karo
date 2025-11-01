import 'package:chat_karo/components/custom_list_tile.dart';
import 'package:chat_karo/util/types/update.types.dart';
import 'package:flutter/material.dart';

// create some example List of Updates here
final List<UpdatePerson> updates = [
  UpdatePerson(name: "Sudip Mondal", time: "8:50 pm"),
  UpdatePerson(name: "Raj Pratab", time: "12:30 pm"),
  UpdatePerson(name: "Rakesh Sign", time: "11:26 am"),
];

class UpdateBody extends StatelessWidget {
  const UpdateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Status",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            CustomListTile(
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.blueGrey.shade700,
                    child: Text(
                      "R",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 15),
                  ),
                ],
              ),
              title: Text("My Status"),
              subtitle: Text("Disappears after 24 hours"),
            ),
            SizedBox(height: 15),
            Text(
              "Contacts",
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            ...updates.map((e) => StatusCard(name: e.name, time: e.time)),
          ],
        ),
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  final String name;
  final String time;
  // final String image; //? save it for letter

  const StatusCard({super.key, required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    final String firstLetter = name[0].toUpperCase();

    return CustomListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.blueGrey.shade700,
        child: Text(
          firstLetter,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      title: Text(name),
      subtitle: Text(time),
    );
  }
}
