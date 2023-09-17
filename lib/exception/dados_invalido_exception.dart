class DadosInvalidosException implements Exception{
  String error() => "Os dados inseridos são inválidos para o cálculo de IMC.";

  @override
  String toString(){
    return "DadosInvalidosException: ${error()}";
  }
}