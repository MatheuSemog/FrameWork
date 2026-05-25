import 'package:flutter/material.dart';

class TelaConfig extends StatelessWidget {
  const TelaConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.settings, size: 40, color: Colors.orange),
                SizedBox(width: 10),
                Text(
                  'Ajustes do App',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(height: 30),
            const Text('• Alterar Tema (Claro/Escuro)', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const Text('• Idioma do Sistema', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const Text('• Limpar Cache de Dados', style: TextStyle(fontSize: 16)),
            const Spacer(),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: const Text('Salvar e Voltar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
