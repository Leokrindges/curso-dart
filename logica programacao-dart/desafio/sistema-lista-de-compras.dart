import 'dart:io';

void main() {
  menu();
}

List<Map<String, dynamic>> listaDeCompras = [];

void menu() {
  bool continuar = true;
  print("Bem-vindo ao Sistema de Lista de Compras!");
  do {
    print("1 - Cadastrar produto.");
    print("2 - Listar produtos.");
    print("3 - Remover produto.");
    print("4 - Finalizar compra.");

    stdout.write("Escolha uma opção: ");
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        cadastrarProduto();
        break;
      case 2:
        listarProdutos();
        break;
      case 3:
        removerProduto();
        break;
      case 4:
        finalizarCompra();
        continuar = false;
        break;
      default:
        print("Opção inválida.");
    }
  } while (continuar);
}

void cadastrarProduto() {
  stdout.write("Digite o nome do produto: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Digite o preço do produto: R\$ ");
  double preco = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a quantidade: ");
  int quantidade = int.parse(stdin.readLineSync()!);

  bool produtoEncontrado = false;

  for (int i = 0; i < listaDeCompras.length; i++) {
    if (listaDeCompras[i]['nome'].toLowerCase() == nome.toLowerCase()) {
      listaDeCompras[i]['quantidade'] += quantidade;
      produtoEncontrado = true;
      print(
          "Produto '$nome' já existia! Quantidade atualizada para ${listaDeCompras[i]['quantidade']}.\n");
      break;
    }
  }

  if (!produtoEncontrado) {
    listaDeCompras
        .add({'nome': nome, 'preco': preco, 'quantidade': quantidade});
    print("Produto '$nome' cadastrado com sucesso!\n");
  }
}

void listarProdutos() {
  if (!listaDeCompras.isNotEmpty) {
    print("Nenhum produto cadastrado.");
    return;
  }
  print("Lista de Compras:");
  for (int i = 0; i < listaDeCompras.length; i++) {
    print(
        "${i + 1}. ${listaDeCompras[i]['nome']} - R\$ ${listaDeCompras[i]['preco']} x ${listaDeCompras[i]['quantidade']} = R\$ ${listaDeCompras[i]['preco'] * listaDeCompras[i]['quantidade']}");
  }
}

void removerProduto() {
  if (listaDeCompras.isEmpty) {
    print("Nenhum produto cadastrado para remover.");
    return;
  }

  listarProdutos();

  stdout.write("Digite o nome do produto a ser removido: ");
  String nome = stdin.readLineSync()!;

  listaDeCompras
      .removeWhere((e) => e['nome'].toLowerCase() == nome.toLowerCase());

  print("Produto '$nome' removido com sucesso.");
}

void finalizarCompra() {
  if (listaDeCompras.isEmpty) {
    print("Nenhum produto cadastrado para finalizar a compra.");
    return;
  }

  listarProdutos();

  double total = 0;
  for (var item in listaDeCompras) {
    total += item['preco'] * item['quantidade'];
  }

  print("Total da compra: R\$ $total");
  listaDeCompras.clear();
  print("Compra finalizada com sucesso!");
  print("Obrigado por usar o Sistema de Lista de Compras!");
}
