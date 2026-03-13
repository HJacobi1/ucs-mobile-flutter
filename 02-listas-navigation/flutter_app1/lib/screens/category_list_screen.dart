import 'package:flutter/material.dart';
import '../models/categoria.dart';
import '../services/categoria_service.dart';
import 'product_list_screen.dart';

class CategoryListScreen extends StatefulWidget {
  CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  late List<Categoria> categorias;

  @override
  void initState() {
    super.initState();
    categorias = CategoriaService().getCategorias();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categorias')),
      body: Center(
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: categorias.length,
          itemBuilder: (context, index) {
            var categoria = categorias[index];
            return ListTile(
              title: Text(categoria.nome),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductListScreen(categoria: categoria),
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
