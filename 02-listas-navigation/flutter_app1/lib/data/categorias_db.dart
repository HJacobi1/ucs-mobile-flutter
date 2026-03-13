import '../models/categoria.dart';

class CategoriasDb {
  static final CategoriasDb _instance = CategoriasDb._internal();

  factory CategoriasDb() {
    return _instance;
  }

  CategoriasDb._internal() {
    _inicializar();
  }

  List<Categoria> _categorias = [];

  void _inicializar() {
    _categorias.add(Categoria(id: 'CatA', nome: 'Categoria A'));
    _categorias.add(Categoria(id: 'CatB', nome: 'Categoria B'));
    _categorias.add(Categoria(id: 'CatC', nome: 'Categoria C'));
    _categorias.add(Categoria(id: 'CatD', nome: 'Categoria D'));
    _categorias.add(Categoria(id: 'CatE', nome: 'Categoria E'));
  }

  List<Categoria> get categorias => _categorias;
}
