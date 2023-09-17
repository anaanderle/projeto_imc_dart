import 'dart:convert';
import 'dart:io';

import 'package:projeto_imc/class/pessoa.dart';

void main(List<String> arguments) {
  print("Bem-vindo(a) à calculadora de IMC!");
  
  print("Insira seu nome: ");
  String nome = stdin.readLineSync(encoding: utf8) ?? "";

  if(nome.isEmpty) nome = "USUÁRIO PADRÃO";

  print("Insira seu peso em kg: ");
  String? pesoInputado = stdin.readLineSync(encoding: utf8);
  double? peso = double.tryParse(pesoInputado ?? "");

  print("Insira sua altura em m: ");
  String? alturaInputada = stdin.readLineSync(encoding: utf8);
  double? altura = double.tryParse(alturaInputada ?? "");

  Pessoa pessoa = Pessoa(nome, altura, peso);

  pessoa.calcularIMC();
}
