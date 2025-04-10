import 'package:flutter/material.dart';
import 'package:flutter_carlos/classes/livro.dart';

void main() {
  runApp(MyBook());
}

class MyBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Pequeno Grimório',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

// Tela inicial (Home)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo de Livros')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega para a tela do livro
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookScreen(book: Book.getExample()),
              ),
            );
          },
          child: Text('Ver livro'),
        ),
      ),
    );
  }
}

// Tela que exibe as informações do livro
class BookScreen extends StatelessWidget {
  final Book book;

  BookScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Título: ${book.title}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Autor: ${book.author}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Ano de publicação: 2040', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Avaliações: 10-10', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text('Páginas: ${book.pages}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'Gênero: ${book.isLongBook() ? "Livro Longo" : "Livro Curto"}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                // Aqui podemos adicionar uma funcionalidade como marcar o livro como favorito
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Livro adicionado aos favoritos!')),
                );
              },
              icon: Icon(Icons.favorite),
              label: Text('Marcar como Favorito'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 227, 226, 228),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Aqui podemos adicionar uma funcionalidade para compartilhar o livro
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Informações do livro compartilhadas!'),
                  ),
                );
              },
              child: Text('Compartilhar Livro'),
            ),
          ],
        ),
      ),
    );
  }
}
