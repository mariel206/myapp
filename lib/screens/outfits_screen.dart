import 'package:flutter/material.dart';

class OutfitsScreen extends StatefulWidget {
  const OutfitsScreen({super.key});

  @override
  State<OutfitsScreen> createState() => _OutfitsScreenState();
}

class _OutfitsScreenState extends State<OutfitsScreen> {
  final List<String> outfits = [];

  void _subirOutfit() {
    setState(() {
      // Solo agregamos un texto simulado como si fuera una foto subida
      outfits.add('Outfit ${outfits.length + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis Outfits')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: _subirOutfit,
              icon: const Icon(Icons.camera_alt),
              label: const Text('Subir Outfit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
              ),
            ),
            const SizedBox(height: 20),
            outfits.isEmpty
                ? const Text(
                    'Aún no has subido ningún outfit',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: outfits.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: ListTile(
                            leading: const Icon(Icons.checkroom, color: Colors.pink),
                            title: Text(outfits[index]),
                          ),
                        );
                      },
                    ),
                  )
          ],
        ),
      ),
    );
  }
}

