import 'package:flutter/material.dart';
import 'package:twnsqr/screens/home.dart';


/// this is the initial class, that shows the bottom navigation bar
/// PageView is used to navigate trough every app screen

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {

  late List<Widget> screens;
  int currentScreen = 2;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    screens = const [
      Home(),
    ];
    controller = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Colors.white,
        indicatorColor: Colors.blue.shade100,
        backgroundColor: Colors.white,
        height: 70,
        selectedIndex: currentScreen,
        onDestinationSelected: (index){
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        destinations: const [
          NavigationDestination(selectedIcon: Icon(Icons.calendar_today_outlined, color: Colors.black), icon: Icon(Icons.calendar_today_outlined), label: '',),
          NavigationDestination(selectedIcon: Icon(Icons.map_outlined, color: Colors.black), icon: Icon(Icons.map_outlined), label: '',),
          NavigationDestination(selectedIcon: Icon(Icons.add, size: 30, color: Colors.black), icon: Icon(Icons.add, size: 30,), label: '',),
          NavigationDestination(selectedIcon: Icon(Icons.people_alt_outlined, color: Colors.black), icon: Icon(Icons.people_alt_outlined), label: '',),
          NavigationDestination(selectedIcon: Icon(Icons.star_border_outlined, color: Colors.black), icon: Icon(Icons.star_border_outlined), label: '',),
        ],
      ),
    );
  }
}
