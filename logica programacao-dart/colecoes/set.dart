void main() {
  Set<String> frutas = {'maçã', 'banana', 'laranja'};
  Set<String> frutas2 = {'uva', 'kiwi', 'banana'};

  print(frutas.intersection(frutas2));
  print(frutas.union(frutas2));
  print(frutas.difference(frutas2));
}
