import 'package:chat_karo/components/custom_list_tile.dart';
import 'package:chat_karo/util/theme/colors.dart';
import 'package:chat_karo/util/types/call.types.dart';
import 'package:flutter/material.dart';

final List<CalledPerson> calls = [
  CalledPerson(
    name: "Sudip Mondal",
    isOutgoing: true,
    time: "21 October, 8:50 pm",
  ),
  CalledPerson(
    name: "Sudip Mondal",
    isOutgoing: false,
    time: "21 October, 8:20 pm",
  ),
  CalledPerson(
    name: "Raj Pratab",
    isOutgoing: false,
    time: "19 October, 12:30 pm",
    isAudioCall: false,
  ),
  CalledPerson(
    name: "Rakesh Sign",
    isOutgoing: false,
    time: "1 Octber, 11:26 am",
    isCallMissed: true,
  ),
];

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, index) => _CallCard(person: calls[index]),
    );
  }
}

class _CallCard extends StatelessWidget {
  final CalledPerson person;

  const _CallCard({required this.person});

  @override
  Widget build(BuildContext context) {
    final String firstLetter = person.name[0].toUpperCase();

    return CustomListTile(
      contentPadding: EdgeInsetsGeometry.symmetric(horizontal: 8, vertical: 4),
      onTap: () {
        // Make a audio call
      },
      leading: CircleAvatar(
        radius: 26,
        backgroundColor: Colors.blueGrey.shade700,
        child: Text(
          firstLetter,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      title: Text(person.name),
      subtitle: Row(
        children: [
          Icon(
            person.isOutgoing ? Icons.call_made : Icons.call_received,
            size: 20,
            color: person.isCallMissed && !person.isOutgoing
                ? MyColors.errorColor
                : MyColors.primaryGreen,
          ),
          SizedBox(width: 5),
          Text(
            person.time,
            style: TextStyle(color: MyColors.primaryText.withOpacity(0.8)),
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          if (person.isAudioCall) {
            // Make an audio call
          } else {
            // Make a video call
          }
        },
        icon: Icon(
          person.isAudioCall ? Icons.call_outlined : Icons.videocam_outlined,
          color: MyColors.primaryText,
        ),
      ),
    );
  }
}
