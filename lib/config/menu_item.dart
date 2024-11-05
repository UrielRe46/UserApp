import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.link,
      required this.icon});
}

const menuItems = [
  MenuItem(
      title: 'Crear Perfil',
      link: '/create',
      icon: Icons.create_outlined)
];
