enum TipoPagamento { pagamento, especie, pix, credito, debito }

extension TipoPagamentoExtension on TipoPagamento {
  static TipoPagamento byName(String nome) {
    return TipoPagamento.values.firstWhere(
      (tipo) => tipo.name.toLowerCase() == nome.toLowerCase(),
      orElse: () => TipoPagamento.pagamento,
    );
  }
}
