import 'package:chat_karo/util/theme/colors.dart';
import 'package:chat_karo/util/types/common.types.dart';
import 'package:flutter/material.dart';

final List<Message> message = [
  Message(message: "Hi", isMe: true, time: "10.20"),
  Message(message: "Hello", isMe: false, time: "10.20"),
  Message(message: "How are you?", isMe: true, time: "10.20"),
  Message(message: "I am fine", isMe: false, time: "10.20"),
  Message(message: "What about you?", isMe: true, time: "10.20"),
  Message(message: "I am good", isMe: false, time: "10.20"),
  Message(message: "Thank you", isMe: true, time: "10.20"),
  Message(message: "You are welcome", isMe: false, time: "10.20"),
  Message(message: "Bye", isMe: true, time: "10.20"),
  Message(message: "See you later", isMe: false, time: "10.20"),
  Message(
    message:
        "Bye ashgf dfsh oihasid cashc oais sahncs sd hsch shdois cashcsa ch ciosa cs ",
    isMe: true,
    time: "10.20",
  ),
];

class ChatPage extends StatefulWidget {
  final String chatId;

  const ChatPage({super.key, required this.chatId});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  bool showAttachFile = true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
              ),
              CircleAvatar(
                backgroundColor: Colors.blueGrey.shade700,
                child: const Text("JD"),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    "10:30 AM",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.call_outlined)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_outlined),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        height: 100,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        cursorWidth: 3,
                        cursorColor: Theme.of(context).colorScheme.primary,
                        controller: _controller,
                        onChanged: (value) {
                          setState(() {
                            showAttachFile = value.isEmpty;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Type a message",
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.onTertiary,
                          hintStyle: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w400),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.camera_alt_outlined),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: showAttachFile ? 40 : 0,
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 300),
                        opacity: showAttachFile ? 1 : 0,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.attach_file_outlined),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: () {},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: MyColors.primaryGreen,
                ),
                child: const Icon(Icons.send, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => CommonMessage(message: message[index]),
        itemCount: message.length,
      ),
    );
  }
}

class CommonMessage extends StatelessWidget {
  final Message message;
  const CommonMessage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: message.isMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.9,
            ),
            decoration: BoxDecoration(
              color: message.isMe
                  ? Theme.of(context).colorScheme.onTertiary
                  : Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    message.message,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: MyColors.primaryText,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Text(
                  message.time,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
