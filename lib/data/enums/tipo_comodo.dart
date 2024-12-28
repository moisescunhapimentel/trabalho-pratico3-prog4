enum TipoComodo { comodo, cozinha, banheiro, quarto, varanda, sala, garagem }

extension TipoComodoExtension on TipoComodo {
  static TipoComodo byName(String nome) {
    return TipoComodo.values.firstWhere(
      (tipo) => tipo.name.toLowerCase() == nome.toLowerCase(),
      orElse: () => TipoComodo.comodo,
    );
  }
}
