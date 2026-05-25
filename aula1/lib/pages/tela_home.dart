import 'package:flutter/material.dart';
import '../widgets/card_icone.dart';
import 'tela_perfil.dart';
import 'tela_config.dart';
import 'tela_favoritos.dart';
import 'tela_notificacao.dart';

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

  // Função que constrói o modal inferior personalizado (Requisito + Desafio Extra)
  void abrirModalInfo(BuildContext context, String titulo, String detalhe, Color cor) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(24),
          height: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, color: cor, size: 28),
                  const SizedBox(width: 8),
                  Text(
                    titulo,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: cor),
                  ),
                ],
              ),
              Text(
                detalhe,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16, color: Colors.black87),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: cor,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text('Entendi e Fechar'),
              ),
            ],
          ),
        );
      },
    );
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
                // Card 1: Navega para a Tela de Perfil
                CardIcone(
                  icone: Icons.person,
                  titulo: 'Perfil',
                  descricao: 'Gerencie suas informações pessoais e dados da conta.',
                  textoBotao: 'Acessar Perfil',
                  cor: Colors.blue,
                  aoClicar: () {
                    atualizarMensagem('Perfil');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaPerfil()),
                    );
                  },
                ),
                // Card 2: Abre o Modal Inferior (ShowModalBottomSheet)
                CardIcone(
                  icone: Icons.settings,
                  titulo: 'Configurações',
                  descricao: 'Ajuste as preferências do aplicativo e notificações.',
                  textoBotao: 'Ver Info de Ajustes',
                  cor: Colors.orange,
                  aoClicar: () {
                    atualizarMensagem('Configurações (Modal)');
                    abrirModalInfo(
                      context, 
                      'Painel de Configurações', 
                      'Acesse este menu rápido para ajustar brilho, som e redefinir suas chaves de segurança.', 
                      Colors.orange
                    );
                  },
                ),
                // Card 3: Navega para a Tela de Favoritos
                CardIcone(
                  icone: Icons.favorite,
                  titulo: 'Favoritos',
                  descricao: 'Veja os itens e conteúdos salvos na sua biblioteca.',
                  textoBotao: 'Ver Favoritos',
                  cor: Colors.pink,
                  aoClicar: () {
                    atualizarMensagem('Favoritos');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaFavoritos()),
                    );
                  },
                ),
                // Card 4: Navega para a Tela de Notificações
                CardIcone(
                  icone: Icons.notifications,
                  titulo: 'Notificações',
                  descricao: 'Confira as últimas novidades e alertas recebidos.',
                  textoBotao: 'Ver Alertas',
                  cor: Colors.green,
                  aoClicar: () {
                    atualizarMensagem('Notificações');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaNotificacao()),
                    );
                  },
                ),
                // Desafio Extra: Card 5 (Abre a tela de Configurações via Rota)
                CardIcone(
                  icone: Icons.build,
                  titulo: 'Ajustes do Sistema',
                  descricao: 'Entre na tela dedicada para alterar dados estruturais.',
                  textoBotao: 'Abrir Ajustes',
                  cor: Colors.blueGrey,
                  aoClicar: () {
                    atualizarMensagem('Ajustes do Sistema');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TelaConfig()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
