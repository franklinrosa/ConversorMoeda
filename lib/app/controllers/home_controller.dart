import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final TextEditingController fromText;
  late List<CurrencyModel> currencies;
  final TextEditingController toText;
  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;

  HomeController({required this.fromText, required this.toText}) {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[1];
    toCurrency = currencies[0];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0;
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
