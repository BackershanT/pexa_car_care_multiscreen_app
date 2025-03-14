import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pexa_car_care_multiscreen_app/src/core/theme/theme.dart';
import 'package:pexa_car_care_multiscreen_app/src/presentation/home/homepage.dart';
import 'package:pexa_car_care_multiscreen_app/src/presentation/profile/profile_page.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: Size(1080, 2340),
//         minTextAdapt: true,
//         splitScreenMode: true,
//         builder: (_, child) {
//           return MaterialApp(
//             initialRoute: '/',
//             routes: {
//               '/': (context) => const Homepage(),
//               '/profile': (context) => const ProfileScreen(),
//             },
//             debugShowCheckedModeBanner: false,
//             themeMode: ThemeMode.system,
//             darkTheme: darkMode,
//             theme: lightMode,
//
//           );
//         });
//   }
// }
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;
  void _toggleTheme(){
    setState(() {
      _isDarkMode =!_isDarkMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(1080, 2340),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            initialRoute: '/',
            routes: {
              '/': (context) => const Homepage(),
              '/profile': (context) =>  ProfileScreen(toggleTheme: _toggleTheme, isDarkMode: _isDarkMode,),
            },
            debugShowCheckedModeBanner: false,
            themeMode: _isDarkMode ? ThemeMode.dark :ThemeMode.light,
            darkTheme: darkMode,
            theme: lightMode,

          );
        });
  }
}