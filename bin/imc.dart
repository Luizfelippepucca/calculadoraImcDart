import 'package:imc/imc.dart';
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print('digite seu nome:');
  var nome = stdin.readLineSync(encoding: utf8);
  print('digite seu peso:');
  var peso = stdin.readLineSync(encoding: utf8);
  dynamic pesoConvertido = double.tryParse(peso.toString()) ?? 'valor inválido';
  if (pesoConvertido == 'valor inválido') {
    print('peso inválido, operaçao cancelada');
    exit(0);
  }

  print('digite sua altura:');
  var altura = stdin.readLineSync(encoding: utf8);
  dynamic alturaConvertida =
      double.tryParse(altura.toString()) ?? 'valor inválido';
  String altM = alturaConvertida.toString().substring(0, 1);
  String altCm = alturaConvertida.toString().substring(1, 3);
  double alturaReal = double.parse('$altM.$altCm');

  if (alturaConvertida == 'valor inválido') {
    print('altura inválida, operaçao cancelada');
    exit(0);
  }

  Pessoa p1 = Pessoa(nome.toString(), pesoConvertido, alturaReal);
  print(p1.calcImc());
}
