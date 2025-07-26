import 'dart:io';

void main() {
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) {
      print("${numeros[i]} é par.");
    }
  }

  List<String> cores = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Digite uma cor: ");
    String cor = stdin.readLineSync()!;
    cores.add(cor);
  }
  print("Cores digitadas: $cores");


  List<int> numerosInteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int i = 0; i < numerosInteiros.length; i++) {
    stdout.write("Tente adivinhar o número de 1 a 10: ");
    int palpite = int.parse(stdin.readLineSync()!);
    if (palpite == numerosInteiros[i]) {
      print("Parabéns! Você adivinhou o número ${numerosInteiros[i]}.");
    } else {
      print("Que pena! O número era ${numerosInteiros[i]}.");
    }
  }

  List<String> nomes = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Digite um nome: ");
    String nome = stdin.readLineSync()!;
    nomes.add(nome);
  }
  print("Nomes digitados: $nomes");
  for (int i = nomes.length - 1; i >= 0; i--) {
    print("Nome $i: ${nomes[i]}");
  }

}
