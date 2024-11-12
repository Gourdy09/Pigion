import 'package:flutter/material.dart';
import 'package:pigion/theme.dart';
import 'package:pigion/dashboard.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme,
      home: const Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation>{
  int currentPageIndex = 0;
  String userName = 'User';

  @override
  Widget build(BuildContext context){
     return Scaffold(
        appBar: AppBar(
          title: Text('Hi, $userName'),
        ),

        bottomNavigationBar: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index){
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.dashboard), label: 'Dashboard'),
            NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),

        body: <Widget>[
          const Dashboard(),
          const Settings(),
        ][currentPageIndex],

      );
  }
}

class Settings extends StatelessWidget {
  const Settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      shadowColor: Colors.transparent,
      margin: EdgeInsets.all(8.0),
      child: SizedBox.expand(
        child: Center(
          child: Text(
            'Settings',
          ),
        ),
      ),
    );
  }
}

