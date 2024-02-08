import 'package:flutter/material.dart';
import 'package:flutter_application/utils/theme/theme.dart';

///class to setup theme, animation, and other configurations
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AStoreAppTheme.lighTheme,
      darkTheme: AStoreAppTheme.darkTheme,
      home: const Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
