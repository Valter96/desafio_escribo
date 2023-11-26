import 'dart:io';

void main() {
  int somaNumDivisiveis(int num) {
    // Tratamento caso o usuário insira um valor negativo ou igual a 0
    if (num <= 0) print('Informe um número positivo maior que 0');

    int count = 0; // Variavel de controle do loop
    int numDivisor = 0; // Recebe os numeros divisores por 3 e 5
    int somaNum = 0; // Soma os numeros recebidos

    // Enquanto count for menor que o número informado pelo usuário executa este código
    while (count < num) {
      // Seleciona os numeros divisiveis por 3 e 5
      if (count % 3 == 0 || count % 5 == 0) {
        numDivisor = count;
        somaNum += numDivisor; // armazena a soma dos números
      }
      count++;
    }

    return somaNum;
  }

  print("Insira um número positivo maior que 0: ");
  String insiraValor = stdin.readLineSync();
  if (insiraValor != null) {
    int valorUser = int.parse(insiraValor);
    print("Total da soma: ${somaNumDivisiveis(valorUser)}");
  }
}
