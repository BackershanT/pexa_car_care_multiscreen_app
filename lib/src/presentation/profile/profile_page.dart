import 'package:flutter/material.dart';
import 'package:pexa_car_care_multiscreen_app/src/presentation/profile/widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;
  const ProfileScreen({Key? key, required this.toggleTheme, required this.isDarkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'),centerTitle: true,
      actions: [
        Switch(
        value: isDarkMode,
        onChanged: (value) {
          toggleTheme();
        },
      ),],),
      body: const Center(
        child: ProfileCard(),
      ),
    );
  }
}


