import 'dart:io';

void main() {
  int contador = 0;
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;
  while (contador <= 5) {
    print("Contador: $frase");
    contador++;
  }

  stdout.write("Adivinhe o número secreto (entre 1 e 10): ");
  int numeroSecreto = 7;
  int palpite = 0;

  while (palpite != numeroSecreto) {
    palpite = int.parse(stdin.readLineSync()!);
    if (palpite < numeroSecreto) {
      print("Muito baixo! Tente novamente.");
    } else if (palpite > numeroSecreto) {
      print("Muito alto! Tente novamente.");
    } else {
      print("Parabéns! Você adivinhou o número secreto.");
    }
  }

  do {
    stdout.write("Digite um palpite (entre 1 e 10): ");
    palpite = int.parse(stdin.readLineSync()!);
    if (palpite < numeroSecreto) {
      print("Muito baixo! Tente novamente.");
    } else if (palpite > numeroSecreto) {
      print("Muito alto! Tente novamente.");
    } else {
      print("Parabéns! Você adivinhou o número secreto.");
    }
  } while (palpite != numeroSecreto);

  stdout.write("Digite um número para calcular o tabuada do mesmo: ");
  int numero = int.parse(stdin.readLineSync()!);
  int i = 1;
  while (i <= 10) {
    print("$numero x $i = ${numero * i}");
    i++;
  }

  do {
    print("$numero x $i = ${numero * i}");
    i++;
  } while (i <= 10);

  double alturaPedro = 1.50;
  double alturaLucas = 1.10;
  int anos = 0;

  print("Altura inicial:");
  print("Pedro: $alturaPedro m");
  print("Lucas: $alturaLucas m");
  print("");

  while (alturaLucas <= alturaPedro) {
    anos++;
    alturaPedro = alturaPedro + 0.02;
    alturaLucas = alturaLucas + 0.03;

    print("Ano $anos: Pedro = $alturaPedro m, Lucas = $alturaLucas m");
  }

  print("");
  print("Resultado: Após $anos anos, Lucas ficou mais alto que Pedro!");
  print("Pedro e Lucas tiveram a mesma altura em ${anos - 1} anos.");

  do {
    anos++;
    alturaPedro = alturaPedro + 0.02;
    alturaLucas = alturaLucas + 0.03;

    print("Ano $anos: Pedro = $alturaPedro m, Lucas = $alturaLucas m");
    print("Resultado: Após $anos anos, Lucas ficou mais alto que Pedro!");
    print("Pedro e Lucas tiveram a mesma altura em ${anos - 1} anos.");
  } while (alturaLucas <= alturaPedro);

  String senhaCorreta = "123456";
  String senhaInformada = "";
  bool acessoPermitido = false;
  do {
    stdout.write("Digite a senha: ");
    senhaInformada = stdin.readLineSync()!;
    if (senhaInformada != senhaCorreta) {
      print("Senha incorreta. Tente novamente.");
    } else {
      print("Senha correta! Acesso permitido.");
      acessoPermitido = true;
    }
  } while (!acessoPermitido);
}
