import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation Dialog Screen Marsya')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () async {
            final selectedColor = await _showColorDialog(context);

            if (selectedColor != null) {
              setState(() {
                color = selectedColor;
              });
            }
          },
        ),
      ),
    );
  }

  Future<Color?> _showColorDialog(BuildContext context) async {
    return showDialog<Color>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              child: const Text('Black'),
              onPressed: () {
                Navigator.pop(dialogContext, Colors.black);
              },
            ),
            TextButton(
              child: const Text('Purple'),
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                  const Color.fromARGB(255, 193, 80, 242),
                );
              },
            ),
            TextButton(
              child: const Text('Orange'),
              onPressed: () {
                Navigator.pop(
                  dialogContext,
                  const Color.fromARGB(255, 244, 154, 64),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
