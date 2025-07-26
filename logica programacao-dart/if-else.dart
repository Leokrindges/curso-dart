import 'dart:io';

void main() {
  stdout.write("Digite sua idade: ");
  final idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    stdout.write("Maior de idade");
  } else {
    stdout.write("Menor de idade");
  }

  stdout.write("Digite sua idade: ");
  final idade2 = int.parse(stdin.readLineSync()!);
  stdout.write("Digite a quantidade de dinheiro que você tem: ");
  final dinheiro = double.parse(stdin.readLineSync()!);

  if (idade2 >= 21 && dinheiro >= 100) {
    stdout.write("Maior de idade e possui dinheiro suficiente");
  } else {
    stdout.write("Não tem idade suficiente ou dinheiro");
  }

  stdout.write("Digite um valor: ");
  final valor = double.parse(stdin.readLineSync()!);
  stdout.write("Digite outro valor: ");
  final valor2 = double.parse(stdin.readLineSync()!);

  if (valor == valor2) {
    stdout.write("Os valores são iguais");
  } else if (valor > valor2) {
    stdout.write("O primeiro valor é maior que o segundo");
  } else {
    stdout.write("O segundo valor é maior que o primeiro");
  }

  double macaUnidadeDuzia = 0.30;
  double macaUnidadeDuziaMais = 0.25;

  stdout.write("Digite a quantidade de maçãs: ");
  final quantidadeMacas = int.parse(stdin.readLineSync()!);

  if (quantidadeMacas >= 12) {
    double total = macaUnidadeDuziaMais * quantidadeMacas;
    stdout.write("O total da compra foi de R\$ $total");
  } else {
    double total = macaUnidadeDuzia * quantidadeMacas;
    stdout.write("O total da compra foi de R\$ $total");
  }

  stdout.write("Digite um número: ");
  final numero = int.parse(stdin.readLineSync()!);

  if (numero % 2 == 0) {
    stdout.write("O número $numero é par");
  } else {
    stdout.write("O número $numero é impar");
  }

  final altura = double.parse(stdin.readLineSync()!);
  final peso = double.parse(stdin.readLineSync()!);
  final imc = peso / (altura * altura);

  if (imc < 18.5) {
    stdout.write("Abaixo do peso");
  } else if (imc > 18.5 && imc <= 24.99) {
    stdout.write("Peso normal");
  } else if (imc > 24.99) {
    stdout.write("Sobrepeso");
  }

  stdout.write("Digite sua idade: ");
  final idadeAtleta = int.parse(stdin.readLineSync()!);
  stdout.write("Digite seu peso: ");
  final pesoAtleta = double.parse(stdin.readLineSync()!);

  if( idadeAtleta <= 12 ) {
    stdout.write("Infantil");
  }  else if (idadeAtleta >= 13 && idadeAtleta <= 16 && pesoAtleta <= 40) {
    stdout.write("Juvenil Leve");
  } else if (idadeAtleta >= 13 && idadeAtleta <= 16 && pesoAtleta > 40) {
    stdout.write("Juvenil Pesado");
  } else if (idadeAtleta >= 17 && idadeAtleta <= 24 && pesoAtleta <= 45) {
    stdout.write("Sênior Leve");
  } else if (idadeAtleta >= 17 && idadeAtleta <= 24 && pesoAtleta > 45 && pesoAtleta <= 60) {
    stdout.write("Sênior Medio");
  } else if (idadeAtleta >= 17 && idadeAtleta <= 24 && pesoAtleta > 60) {
    stdout.write("Sênior Pesado");
  } else if (idadeAtleta > 24) {
    stdout.write("Veterano");
  } else {
    stdout.write("Idade inválida");
  }
}
