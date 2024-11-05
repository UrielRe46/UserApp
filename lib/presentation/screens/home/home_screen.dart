import 'package:flutter/material.dart';
import 'package:userapp/config/menu_item.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Oculta la flecha de regreso
        title: const Text(
          'Inicio',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 104, 44, 183),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 300,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 4,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: ListTile(
                leading: Icon(
                  menuItems[0].icon,
                  color: const Color.fromARGB(255, 104, 44, 183),
                ),
                title: Text(
                  menuItems[0].title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                ),
                onTap: () {
                  context.push(menuItems[0]
                      .link);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
