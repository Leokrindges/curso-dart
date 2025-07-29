void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Testando com mínimo e máximo
  List<int> intervalo1 = filtrarNumeros(numeros: numeros, minimo: 3, maximo: 7);
  print('Números entre 3 e 7: $intervalo1');

  // Testando só com mínimo
  List<int> intervalo2 = filtrarNumeros(numeros: numeros, minimo: 5);
  print('Números maiores ou iguais a 5: $intervalo2');

  // Testando só com máximo
  List<int> intervalo3 = filtrarNumeros(numeros: numeros, maximo: 4);
  print('Números menores ou iguais a 4: $intervalo3');

  formatarTexto(nome: 'João', sobrenome: 'Silva', cidade: 'Portão', idade: 25);
}

List<int> filtrarNumeros({required List<int> numeros, int? minimo, int? maximo}) {
  if (minimo == null && maximo == null) {
    return numeros;
  }
  List<int> resultado = [];
  for (int numero in numeros) {
    if (minimo != null && maximo == null && numero >= minimo) {
      resultado.add(numero);
    } else if (minimo == null && maximo != null && numero <= maximo) {
      resultado.add(numero);
    } else if (minimo != null &&
        maximo != null &&
        numero >= minimo &&
        numero <= maximo) {
      resultado.add(numero);
    }
  }
  return resultado;
}

String formatarTexto(
    {required String nome,
    required String sobrenome,
    int idade = 18,
    String cidade = 'desconhecida'}) {
  return 'Nome completo: $nome $sobrenome, Idade: $idade, Cidade: $cidade';
}
