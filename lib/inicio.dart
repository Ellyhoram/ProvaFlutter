import 'package:flutter/material.dart';
import 'package:flutter_carlos/book.dart';

void main() {
  runApp(telaInicio());
}

class telaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Tela Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MinhaTela(),
    );
  }
}

class MinhaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meu pequeno grimorio')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.pushNamed(context, '/livrocatalogo');
            Navigator.push(
              context,
              new MaterialPageRoute(builder: (context) => new MyBook()),
            );
          },
          child: Text('Ver catalogo de livro'),
        ),
      ),
    );
  }
}
