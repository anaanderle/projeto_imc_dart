import 'package:projeto_imc/exception/dados_invalido_exception.dart';

String lidarCalculoIMC(double? peso, double? altura){
  if(peso == null || altura == null || peso <= 0 || altura <= 0){
    throw DadosInvalidosException();
  }
  
  double imc = peso / (altura * altura);

  if(imc < 16){
    return "Magreza grave";
  }

  if(imc < 17){
    return "Magreza moderada";
  }

  if(imc < 18.5){
    return "Magreza leve";
  }

  if(imc < 25){
    return "Saudável";
  }

  if(imc < 30){
    return "Sobrepeso";
  }

  if(imc < 35){
    return "Obesidade grau 1";
  }

  if(imc < 40){
    return "Obesidade grau 2";
  }

  return "Obesidade grau 3";
}
