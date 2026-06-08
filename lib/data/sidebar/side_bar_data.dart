import 'package:flutter/material.dart';

class SideBarCategory {
  final String title;
  final IconData icon;
  final bool isSelected;
  final String route;

  SideBarCategory({
    required this.title,
    required this.icon,
    required this.route,
    this.isSelected = false,
  });
}

final List<SideBarCategory> menuItems = [
  SideBarCategory(
    title: "New Chat",
    icon: Icons.edit_square,
    route: '/',
    isSelected: true,
  ),
  SideBarCategory(
    title: "Explore GPTs",
    icon: Icons.explore_outlined,
    route: '/explore',
  ),
  SideBarCategory(
    title: "Library",
    icon: Icons.folder_outlined,
    route: '/library',
  ),
  SideBarCategory(
    title: "Settings",
    icon: Icons.settings_outlined,
    route: '/settings',
  ),
];
