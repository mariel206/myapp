import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=3'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Nombre de Usuario',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'usuario@email.com',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              const Text(
                'Amante de la moda, los colores y los outfits únicos.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                onPressed: () {
                  // Aquí podrías navegar a una pantalla de edición
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Función de editar próximamente')),
                  );
                },
                icon: const Icon(Icons.edit),
                label: const Text('Editar Perfil'),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Aquí podrías cerrar sesión o volver al login
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Sesión cerrada (ficticio)')),
                  );
                },
                child: const Text('Cerrar sesión'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
