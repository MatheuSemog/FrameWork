import 'package:flutter/material.dart';

class TelaFavoritos extends StatelessWidget {
  const TelaFavoritos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Favoritos'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.favorite, size: 80, color: Colors.pink),
              const SizedBox(height: 16),
              const Text(
                'Sua lista está vazia!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.pink),
              ),
              const SizedBox(height: 8),
              const Text(
                'Toque no ícone de coração nos itens para salvá-los aqui.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              const SizedBox(height: 30),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close),
                label: const Text('Fechar Página'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
