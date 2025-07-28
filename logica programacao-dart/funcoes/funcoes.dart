void main() {
  saudacao();
  double resultado = somar(5.0, 3.0);
  print('A soma é: $resultado');
  print('O número 3 é par? ${isPar(3)}');
}

saudacao() {
  print('Olá, World!');
}

double somar (double num1, double num2) {
  return num1 + num2;
}

bool isPar(int numero) {
  return numero % 2 == 0;
}