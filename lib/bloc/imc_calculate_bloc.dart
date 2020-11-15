import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var alturaCtrl = MaskedTextController(mask: '000');
  var pesoCtrl = MaskedTextController(mask: '000');
  String result = "Informe os seus dados!";

  calculate() {
    double peso = double.parse(pesoCtrl.text);
    double altura = (double.parse(alturaCtrl.text) / 100);
    double imc = peso / (altura * altura);

    if (imc < 18.6) {
      result = "Abaixo do peso! Seu índice é de: ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 18.6 && imc < 24.9) {
      result = "Ótimo! Seu índice é de: ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 24.9 && imc < 29.9) {
      result = "Acima do peso! Seu índice é de: ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 29.9 && imc < 34.9) {
      result = "Obesidade I! Seu índice é de: ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 34.9 && imc < 39.9) {
      result = "Obesidade II! Seu índice é de: ${imc.toStringAsPrecision(2)}";
    } else if (imc >= 40) {
      result = "Obesidade III! Seu índice é de: ${imc.toStringAsPrecision(2)}";
    }
  }
}
