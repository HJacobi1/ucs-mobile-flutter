import '../models/produto.dart';

class ProdutosDb {
  static final ProdutosDb _instance = ProdutosDb._internal();

  factory ProdutosDb() {
    return _instance;
  }

  ProdutosDb._internal() {
    _inicializar();
  }

  List<Produto> _produtos = [];

  void _inicializar() {
    _inicializarProdutosCategoriaA();
    _inicializarProdutosCategoriaB();
    _inicializarProdutosCategoriaC();
  }

  void _inicializarProdutosCategoriaA() {
    const idCategoriaA = 'CatA';
    _produtos.add(
      Produto(
        id: 'PrdA1',
        idCategoria: idCategoriaA,
        descricao: 'Produto A1',
        preco: 10.0,
      ),
    );

    _produtos.add(
      Produto(
        id: 'PrdA2',
        idCategoria: idCategoriaA,
        descricao: 'Produto A2',
        preco: 1.0,
      ),
    );

    _produtos.add(
      Produto(
        id: 'PrdA3',
        idCategoria: idCategoriaA,
        descricao: 'Produto A3',
        preco: 10.0,
      ),
    );
  }

  void _inicializarProdutosCategoriaB() {
    const idCategoriaB = 'CatB';
    _produtos.add(
      Produto(
        id: 'PrdB1',
        idCategoria: idCategoriaB,
        descricao: 'Produto B1',
        preco: 10.0,
      ),
    );

    _produtos.add(
      Produto(
        id: 'PrdB2',
        idCategoria: idCategoriaB,
        descricao: 'Produto B2',
        preco: 1.0,
      ),
    );
  }

  void _inicializarProdutosCategoriaC() {
    const idCategoriaC = 'CatC';
    _produtos.add(
      Produto(
        id: 'PrdC1',
        idCategoria: idCategoriaC,
        descricao: 'Produto C1',
        preco: 10.0,
      ),
    );

    _produtos.add(
      Produto(
        id: 'PrdC2',
        idCategoria: idCategoriaC,
        descricao: 'Produto C2',
        preco: 1.0,
      ),
    );

    _produtos.add(
      Produto(
        id: 'PrdC3',
        idCategoria: idCategoriaC,
        descricao: 'Produto C3',
        preco: 10.0,
      ),
    );
  }

  List<Produto> getProdutosPorCategoria(String idCategoria) {
    return _produtos
        .where((produto) => produto.idCategoria == idCategoria)
        .toList();
  }
}
