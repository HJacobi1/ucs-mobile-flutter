import 'package:flutter/material.dart';
import '../models/categoria.dart';
import '../models/produto.dart';
import '../services/produto_service.dart';
import 'product_screen.dart';

class ProductListScreen extends StatefulWidget {
  final Categoria categoria;

  const ProductListScreen({super.key, required this.categoria});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  late List<Produto> produtos;

  @override
  void initState() {
    super.initState();
    produtos = ProdutoService().getProdutosPorCategoria(widget.categoria.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produtos de ${widget.categoria.nome}')),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            var produto = produtos[index];
            return ListTile(
              title: Text(produto.descricao),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductScreen(produto: produto),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
