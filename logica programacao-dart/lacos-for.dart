import 'dart:io';

void main() {
  for (int contador = 0; contador <= 20; contador++) {
    if (contador % 2 == 0) {
      print("$contador é par.");
    }
  }
  stdout.write("Digite um número: ");
  int numero = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$numero x $i = ${numero * i}");
  }

  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;
  for (int i = 1; i <= 5; i++) {
    print("$i - $frase");
  }
}
