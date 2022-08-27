import 'package:flutter/material.dart';
import 'package:project_dicoding/screens/menu_page.dart';

void main() => runApp(const ProfilePicker());

class ProfilePicker extends StatelessWidget {
  const ProfilePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuPage(),
    );
  }
}
