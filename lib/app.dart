import 'package:ex_6/screens/explore/explore_screen.dart';
import 'package:ex_6/screens/home/home_screen.dart';
import 'package:ex_6/screens/library/library_screen.dart';
import 'package:ex_6/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/explore': (_) => ExploreScreen(),
        '/library': (_) => LibraryScreen(),
        '/settings': (_) => SettingsScreen(),
      },
    );
  }
}
