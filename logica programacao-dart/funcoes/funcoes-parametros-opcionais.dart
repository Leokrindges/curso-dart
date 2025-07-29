void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  List<int> resultado = multiplador(numeros, 2);
  print("Números originais: $numeros");
  print("Números multiplicados por 2: $resultado");

  List<int> numerosAdicionados = [1, 2, 3];
  int soma = somar(numerosAdicionados);
  print("Soma dos números com adição: $soma");
}

List<int> multiplador(List<int> numeros, [int? multiplicador]) {
  List<int> resultado = [];
  if (multiplicador == null) {
    return numeros;
  }
  for (int numero in numeros) {
    resultado.add(numero * multiplicador);
  }
  return resultado;
}

int somar(List<int> numeros, [int adicao = 0]) {
  int resultado = 0;

  for (int numero in numeros) {
    resultado += numero + adicao;
  }
  return resultado;
}
