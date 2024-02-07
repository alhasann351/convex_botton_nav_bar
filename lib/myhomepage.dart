import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 2;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Theme.of(context).primaryColor,
        color: Colors.white,
        height: 60,
        //curveSize: 70,
        style: TabStyle.reactCircle,
        initialActiveIndex: currentTab,
        items: const [
          TabItem(
            icon: Icons.chat_outlined,
            title: 'Chat',
          ),
          TabItem(icon: Icons.person_2_outlined, title: 'Profile',),
          TabItem(icon: Icons.dashboard_outlined, title: 'Dashboard',),
          TabItem(icon: Icons.favorite_outline, title: 'Favorite',),
          TabItem(icon: Icons.settings_outlined, title: 'Setting',),
        ],
      ),
    );
  }
}
