import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UserProfilePage(),
  ));
}

// Página do usuário
class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuário'),  // Título da barra superior
        backgroundColor: const Color.fromARGB(255, 253, 124, 169),  // Cor de fundo da AppBar
      ),
      body: Column( // Organizando tudo de forma vertical
        children: [
          // Banner
          Container(
            height: 200,  // Definindo a altura do banner
            color: Colors.pink[100],  // Cor de fundo do banner
            child: Center(
              child: CircleAvatar(
                radius: 50,  // Tamanho da foto
                backgroundImage: AssetImage('assets/doguinho.jpg'),  // Caminho da imagem (foto do perfil)
              ),
            ),
          ),
          SizedBox(height: 16),  // Espaço entre a foto e o nome

          // Nome do usuário
          Text(
            'Letícia Moraes',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),  // Estilo do texto
          ),
          SizedBox(height: 8),  // Espaço entre o nome e a bio

          // Bio
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,  // Centralizando o texto
            children: [
              Text(
                'Jardim Alegre, Brazil',  // Localização
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 8),  // Espaço
              Text(
                'leticia.moraes@example.com',  // E-mail
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 16),  // Espaço entre a bio e as habilidades

          // Título das habilidades centralizado
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),  // Espaçamento nas laterais
            child: Column(
              children: [
                Text(
                  'Habilidades:',  // Título para as habilidades
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.center,  // Centraliza o título
                  ),
                ),
                SizedBox(height: 8),  // Espaço entre o título e as habilidades

                // Lista de habilidades centralizada
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,  // Centraliza as habilidades
                  children: [
                    _buildSkillChip('HTML'),
                    _buildSkillChip('CSS'),
                    _buildSkillChip('JS'),
                    _buildSkillChip('Dart'),
                    _buildSkillChip('Flutter'),
                    _buildSkillChip('Adobe Express'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),  // Espaço entre as habilidades e os botões

          // Botões de seguir e mensagem
          Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              ElevatedButton(
                onPressed: () {},  // Função do botão (ainda sem ação)
                child: Text('Seguir'),
              ),
              SizedBox(width: 10),  // Espaço entre os botões
              ElevatedButton(
                onPressed: () {},  // Função do botão (ainda sem ação)
                child: Text('Mensagem'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Função para criar os "chips" de habilidades
  Widget _buildSkillChip(String skill) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),  // Espaçamento entre os chips
      child: Chip(
        label: Text(skill),  // Nome da habilidade
        backgroundColor: Colors.pink[50],  // Cor de fundo do chip
        labelStyle: TextStyle(color: Colors.pink[800]),  // Cor do texto no chip
      ),
    );
  }
}
