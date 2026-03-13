import '../data/categorias_db.dart';
import '../models/categoria.dart';

class CategoriaService {
  static final CategoriaService _instance = CategoriaService._internal();

  factory CategoriaService() {
    return _instance;
  }

  CategoriaService._internal();

  List<Categoria> getCategorias() {
    return CategoriasDb().categorias;
  }
}