// Classe Book já fornecida
class Book {
  final String title;
  final String author;
  final int pages;

  Book({required this.title, required this.author, required this.pages});

  // Método para verificar se o livro é longo
  bool isLongBook() {
    return pages > 300;
  }

  // Método estático para obter um exemplo da classe
  static Book getExample() {
    return Book(
      title: 'The Dart Programming Language',
      author: 'Chris Buckett',
      pages: 350,
    );
  }
}
