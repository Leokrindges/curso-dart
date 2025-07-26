import 'dart:io';

void main() {
  print("Escolha qual operação matemática deseja realizar:");
  print("1. Adição");
  print("2. Subtração");
  print("3. Multiplicação");
  print("4. Divisão");
  print("5. Módulo");

  final escolha = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o primeiro número: ");
  final num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Digite o segundo número: ");
  final num2 = double.parse(stdin.readLineSync()!);
  double resultado;

  switch (escolha) {
    case 1:
      resultado = num1 + num2;
      print("O resultado da adição de $num1 e $num2 é: $resultado");
      break;
    case 2:
      resultado = num1 - num2;
      print("O resultado da subtração de $num1 e $num2 é: $resultado");
      break;
    case 3:
      resultado = num1 * num2;
      print("O resultado da multiplicação de $num1 e $num2 é: $resultado");
      break;
    case 4:
      resultado = num1 / num2;
      print("O resultado da divisão de $num1 e $num2 é: $resultado");
      break;
    case 5:
      resultado = num1 % num2;
      print("O resultado do módulo de $num1 e $num2 é: $resultado");
      break;
    default:
      print("Opção inválida.");
  }

  print("Escolha o dia da semana:");
  print("1. Segunda-feira");
  print("2. Terça-feira");
  print("3. Quarta-feira");
  print("4. Quinta-feira");
  print("5. Sexta-feira");
  print("6. Sábado");
  print("7. Domingo");
  final dia = int.parse(stdin.readLineSync()!);
  switch (dia) {
    case 1:
      print("Hoje é Segunda-feira.");
      break;
    case 2:
      print("Hoje é Terça-feira.");
      break;
    case 3:
      print("Hoje é Quarta-feira.");
      break;
    case 4:
      print("Hoje é Quinta-feira.");
      break;
    case 5:
      print("Hoje é Sexta-feira.");
      break;
    case 6:
      print("Hoje é Sábado.");
      break;
    case 7:
      print("Hoje é Domingo.");
      break;
    default:
      print("Dia inválido.");
  }

  print("Escolha para qual temeperatura deseja converter:");
  print("1. Celsius para Fahrenheit");
  print("2. Fahrenheit para Celsius");
  final temperaturaEscolha = int.parse(stdin.readLineSync()!);
  stdout.write("Digite a temperatura: ");
  final temperatura = double.parse(stdin.readLineSync()!);

  switch (temperaturaEscolha) {
    case 1:
      final fahrenheit = (temperatura * 9 / 5) + 32;
      print("A temperatura em Fahrenheit é: $fahrenheit");
      break;
    case 2:
      final celsius = (temperatura - 32) * 5 / 9;
      print("A temperatura em Celsius é: $celsius");
      break;
    default:
      print("Opção inválida.");
  }
}
