import 'package:flutter/material.dart';

class TelaNotificacao extends StatelessWidget {
  const TelaNotificacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas e Notificações'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Card(
              child: ListTile(
                leading: Icon(Icons.mail, color: Colors.green),
                title: Text('Bem-vindo ao Novo App de Ícones!'),
                subtitle: Text('Aproveite o aplicativo.'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.update, color: Colors.green),
                title: Text('Atualização de Sistema'),
                subtitle: Text('Versão 2.0 instalada com sucesso.'),
              ),
            ),
            const Spacer(),
            // Desafio extra: Nome no final de uma das páginas
            const Text(
              'Matheus Miranda Gomes',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
