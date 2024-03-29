import 'package:app/screens/barcodescan_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Requiring the list of todos.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Foodbank Inventory'),
          actions: [
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BarcodescanScreen())),
                icon: const Icon(Icons.add_a_photo))
          ],
        ),
        body: Column());
  }
}
