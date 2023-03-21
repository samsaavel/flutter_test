import 'package:basics/application/theme_service.dart';
import 'package:basics/presentation/navigation.dart';
import 'package:basics/presentation/navigation_examples/screen_one.dart';
import 'package:basics/presentation/navigation_examples/screen_two.dart';
import 'package:basics/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const RootBottomNavigation(),
          routes: <String, WidgetBuilder>{
            '/root': (BuildContext context) => const RootBottomNavigation(),
            '/screenOne': (BuildContext context) => const ScreenOne(),
            '/screenTwo': (BuildContext context) => const ScreenTwo(),
          });
    });
  }
}
