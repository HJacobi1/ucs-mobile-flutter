class Produto {
  String id;
  String idCategoria;
  String descricao;
  double preco;
  String? observacoes;

  Produto({
    required this.id,
    required this.idCategoria,
    required this.descricao,
    required this.preco,
    this.observacoes,
  });
}
