import 'package:flutter/material.dart';
import '../models/produto.dart';

class ProductScreen extends StatelessWidget {
  final Produto produto;

  const ProductScreen({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produto.descricao)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID: ${produto.id}'),
            Text('Descrição: ${produto.descricao}'),
            Text('Preço: R\$ ${produto.preco.toStringAsFixed(2)}'),
            Text('Categoria ID: ${produto.idCategoria}'),
            if (produto.observacoes != null)
              Text('Observações: ${produto.observacoes}'),
          ],
        ),
      ),
    );
  }
}
