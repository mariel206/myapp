import 'package:flutter/material.dart';

class OutfitsScreen extends StatelessWidget {
  const OutfitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.camera_alt, size: 100),
          SizedBox(height: 20),
          Text('Sube tu outfit aquí', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
