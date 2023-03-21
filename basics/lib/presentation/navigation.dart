import 'package:basics/presentation/counter/counter_screen.dart';
import 'package:basics/presentation/widget_examples/list/list_screen.dart';
import 'package:basics/presentation/widget_examples/widget_examples_screen.dart';
import 'package:basics/theme_animation/theme_animation_screen.dart';
import 'package:flutter/material.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({Key? key}) : super(key: key);

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetExampleScreen(),
          CounterScreen(),
          ListScreen(),
          ThemeAnimationScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        // selectedItemColor: Colors.pink.shade800,
        // backgroundColor: Colors.blueGrey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Example"),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken),
            label: "HeartBroken",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.night_shelter), label: "Night"),
          BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: "Theme"),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.catching_pokemon), label: "Example"),
        ],
      ),
    );
  }
}
