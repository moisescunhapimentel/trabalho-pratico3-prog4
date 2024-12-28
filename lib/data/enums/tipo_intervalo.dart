enum TipoIntervalo { intervalo, mensal, anual }

extension TipoIntervaloExtension on TipoIntervalo {
  static TipoIntervalo byName(String nome) {
    return TipoIntervalo.values.firstWhere(
      (tipo) => tipo.name.toLowerCase() == nome.toLowerCase(),
      orElse: () => TipoIntervalo.intervalo,
    );
  }
}
