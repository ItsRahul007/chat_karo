import 'package:chat_karo/util/route/route.config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CommonScafold extends StatefulWidget {
  final bool search;
  final bool appBar;
  final Widget child;
  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool floatingBar;
  final IconData? floatingIcon;
  final Function? onFloatingButtonPressed;
  final Function(String)? onSearch;
  final TextEditingController? searchController;
  final int bottomNavIndex;

  const CommonScafold({
    super.key,
    this.search = false,
    this.appBar = false,
    this.floatingBar = false,
    this.floatingIcon,
    this.onFloatingButtonPressed,
    required this.child,
    required this.title,
    this.actions = const [],
    this.leading,
    this.onSearch,
    this.searchController,
    required this.bottomNavIndex,
  });

  @override
  State<CommonScafold> createState() => _CommonScafoldState();
}

class _CommonScafoldState extends State<CommonScafold> {
  bool isSearchActive = false;

  @override
  Widget build(BuildContext context) {
    final searchWidgets = [
      AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: isSearchActive ? 370 : 0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.onTertiary,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                autofocus: true,
                autocorrect: false,
                controller: widget.searchController,
                onChanged: (value) {
                  widget.onSearch?.call(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  hintText: "Search chat",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            if (isSearchActive)
              IconButton(
                onPressed: () {
                  setState(() {
                    isSearchActive = !isSearchActive;
                  });
                },
                icon: const Icon(Icons.search),
              ),
          ],
        ),
      ),
      if (!isSearchActive)
        IconButton(
          onPressed: () {
            setState(() {
              isSearchActive = !isSearchActive;
            });
          },
          icon: const Icon(Icons.search),
        ),
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: !widget.appBar
          ? null
          : AppBar(
              title: Text(widget.title),
              actions: widget.search
                  ? [...searchWidgets, ...?widget.actions]
                  : widget.actions,

              leading: widget.leading,
            ),
      floatingActionButton: !widget.floatingBar
          ? null
          : FloatingActionButton(
              onPressed: () {
                widget.onFloatingButtonPressed?.call();
              },
              child: Icon(widget.floatingIcon, size: 32),
            ),
      body: widget.child,
      bottomNavigationBar: _MyBottomNavigationBar(
        bottomNavIndex: widget.bottomNavIndex,
      ),
    );
  }
}

class _MyBottomNavigationBar extends StatefulWidget {
  final int bottomNavIndex;
  const _MyBottomNavigationBar({required this.bottomNavIndex});

  @override
  State<_MyBottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.bottomNavIndex,
      onTap: (index) {
        if (index == widget.bottomNavIndex) return;

        if (index == 0) {
          context.go(bottomNavRoutes[index]);
        } else {
          final canPop = context.canPop();
          if (!canPop) {
            context.push(bottomNavRoutes[index]);
          } else {
            context.replace(bottomNavRoutes[index]);
          }
        }
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        BottomNavigationBarItem(
          icon: Icon(Icons.diversity_3),
          label: 'Updates',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
      ],
    );
  }
}

const List<String> bottomNavRoutes = [
  MyRoutes.home,
  MyRoutes.updates,
  MyRoutes.calls,
];
