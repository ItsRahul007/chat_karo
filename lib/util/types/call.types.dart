class CalledPerson {
  final String name;
  final bool isOutgoing;
  final String time;
  final bool isAudioCall;
  final bool isCallMissed;

  CalledPerson({
    required this.name,
    required this.isOutgoing,
    required this.time,
    this.isAudioCall = true,
    this.isCallMissed = false,
  });
}
