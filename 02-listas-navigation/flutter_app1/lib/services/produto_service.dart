import '../data/produtos_db.dart';
import '../models/produto.dart';

class ProdutoService {
  static final ProdutoService _instance = ProdutoService._internal();

  factory ProdutoService() {
    return _instance;
  }

  ProdutoService._internal();

  List<Produto> getProdutosPorCategoria(String idCategoria) {
    return ProdutosDb().getProdutosPorCategoria(idCategoria);
  }
}
