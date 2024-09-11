import 'package:flutter/material.dart';
import 'package:golf_app/pages/main_page.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Menus current;
  final Menus name;
  const BottomNavigationItem({super.key, required this.onPressed, required this.icon, required this.current, required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
                      onPressed: onPressed, 
                      icon: Icon(icon),
                      color: 
                      current == name 
                      ? Colors.green 
                      : Colors.black.withOpacity(.5),
                      );
  }
}