import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  String mensagemFeedback = 'Clique em um dos botões abaixo';

  void atualizarMensagem(String opcao) {
    setState(() {
      mensagemFeedback = 'Você clicou em $opcao';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App de Ícones'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            color: Theme.of(context).colorScheme.secondaryContainer,
            child: Text(
              mensagemFeedback,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CardIcone(
                  icone: Icons.person,
                  titulo: 'Perfil',
                  descricao: 'Gerencie suas informações pessoais e dados da conta.',
                  textoBotao: 'Acessar Perfil',
                  cor: Colors.blue,
                  aoClicar: () => atualizarMensagem('Perfil'),
                ),
                CardIcone(
                  icone: Icons.settings,
                  titulo: 'Configurações',
                  descricao: 'Ajuste as preferências do aplicativo e notificações.',
                  textoBotao: 'Abrir Ajustes',
                  cor: Colors.orange,
                  aoClicar: () => atualizarMensagem('Configurações'),
                ),
                CardIcone(
                  icone: Icons.favorite,
                  titulo: 'Favoritos',
                  descricao: 'Veja os itens e conteúdos salvos na sua biblioteca.',
                  textoBotao: 'Ver Favoritos',
                  cor: Colors.pink,
                  aoClicar: () => atualizarMensagem('Favoritos'),
                ),
                CardIcone(
                  icone: Icons.notifications,
                  titulo: 'Notificações',
                  descricao: 'Confira as últimas novidades e alertas recebidos.',
                  textoBotao: 'Ver Alertas',
                  cor: Colors.green,
                  aoClicar: () => atualizarMensagem('Notificações'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}