import 'dart:io';

void main() {
  List<Map<String, dynamic>> produtos = [
    {
      'nome': 'Notebook',
      'preco': 2500.00,
    },
    {
      'nome': 'Smartphone',
      'preco': 1500.00,
    },
    {
      'nome': 'Tablet',
      'preco': 800.00,
    }
  ];

  double precoTotal = 0.0;

  for (var i = 0; i < produtos.length; i++) {
    precoTotal += produtos[i]['preco'] as double;
    print('${produtos[i]['nome']}: R\$ ${produtos[i]['preco']}');
  }

  print('\nPreço total de todos os produtos: R\$ $precoTotal');

  final pessoa = [
    {'nome': 'João', 'idade': 30},
    {'nome': 'Maria', 'idade': 25},
    {'nome': 'Pedro', 'idade': 35}
  ];

  for (var i = 0; i < pessoa.length; i++) {
    print('${pessoa[i]['nome']} tem ${pessoa[i]['idade']} anos.');
  }

  bool continuar = true;
  List<Map<String, dynamic>> produtos1 = [];
  double precoTotal1 = 0.0;

  while (continuar) {
    stdout.write("Digite o nome do produto: ");
    String nome = stdin.readLineSync()!;
    stdout.write("Digite o preço do produto: ");
    double preco = double.parse(stdin.readLineSync()!);
    stdout.write("Digite a quantidade do produto: ");
    int quantidade = int.parse(stdin.readLineSync()!);
    produtos1.add({'nome': nome, 'preco': preco, 'quantidade': quantidade});

    precoTotal1 += preco * quantidade;

    print('Deseja continuar? (s/n)');
    String? resposta = stdin.readLineSync();

    if (resposta == 'n') {
      continuar = false;
    }
  }
  print('\nProdutos cadastrados:');
  for (var produto in produtos1) {
    print('${produto['nome']} - Preço: R\$ ${produto['preco']}, Quantidade: ${produto['quantidade']}');
  }
  print('Preço total: R\$ $precoTotal1');
}
