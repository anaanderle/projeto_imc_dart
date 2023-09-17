import 'package:projeto_imc/exception/dados_invalido_exception.dart';
import 'package:projeto_imc/projeto_imc.dart' as calculadoraIMC;
import 'package:test/test.dart';

void main() {
  group("Cálculo do IMC por peso e altura com valores calculáveis", (){
      var valuesToTest = {
        {'peso': 35, 'altura': 1.57}: "Magreza grave",
        {'peso': 42, 'altura': 1.60}: "Magreza moderada",
        {'peso': 48, 'altura': 1.63}: "Magreza leve",
        {'peso': 52, 'altura': 1.66}: "Saudável",
        {'peso': 72, 'altura': 1.69}: "Sobrepeso",
        {'peso': 100, 'altura': 1.72}: "Obesidade grau 1",
        {'peso': 118, 'altura': 1.75}: "Obesidade grau 2",
        {'peso': 150, 'altura': 1.78}: "Obesidade grau 3",
      };

      valuesToTest.forEach((values, expected) {
        test("valores: $values, esperado: $expected", (){
          expect(calculadoraIMC.lidarCalculoIMC(
            double.parse(values['peso'].toString()), 
            double.parse(values['altura'].toString())), 
            expected);
        });
      });
  });

  group("Cálculo do IMC por peso e altura com valores incalculáveis", (){
      var valuesToTest = {
        {'peso': 0, 'altura': 1.57},
        {'peso': 42, 'altura': 0},
        {'peso': 0, 'altura': 0},
      };

      for (var values in valuesToTest){
        test("valores: $values", (){
          expect(() => calculadoraIMC.lidarCalculoIMC(
            double.parse(values['peso'].toString()),
            double.parse(values['altura'].toString())), 
            throwsA(TypeMatcher<DadosInvalidosException>())
            );
        });
      }
  });
}
