// ignore_for_file: prefer_final_fields

class Pessoa {
  // ignore: prefer_final_fields
  String _nome = "";
  // ignore: prefer_final_fields
  double _peso = 0;
  double _altura = 0;

  Pessoa(this._nome, this._peso, this._altura);

  String calcImc() {
    double peso = _peso;
    double altura = _altura;
    double result = peso / (altura * 2);
    String resultText = result.toStringAsFixed(2);

    if (result < 16) {
      return ' $_nome seu IMC $resultText: Magreza grave';
    }
    if (result >= 16 && result < 17) {
      return '$_nome seu IMC $resultText: Magreza moderada';
    }
    if (result >= 17 && result < 18.5) {
      return '$_nome seu IMC $resultText: Magreza leve';
    }
    if (result >= 18.5 && result < 25) {
      return '$_nome seu IMC $resultText: Saudavel';
    }

    if (result >= 25 && result < 30) {
      return '$_nome  seu IMC $resultText: Sobrepeso';
    }
    if (result >= 30 && result < 35) {
      return '$_nome seu IMC $resultText: Obesidade grau 1';
    }

    if (result >= 35 && result < 40) {
      return '$_nome seu IMC $resultText: Obesidade grau 2(severa)';
    }

    return '$_nome seu IMC $resultText: Obesidade grau 3(Mórbida)';
  }
}
