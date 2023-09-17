import 'package:projeto_imc/projeto_imc.dart';

class Pessoa {
  String nome;
  double? altura;
  double? peso;

  Pessoa(this.nome, this.altura, this.peso);

  void calcularIMC(){
    print("O IMC de $nome significa '${lidarCalculoIMC(peso, altura)}'");
  }
}
