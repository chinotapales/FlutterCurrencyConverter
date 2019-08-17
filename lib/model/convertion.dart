import 'package:flutter_currency_conversion/model/rates.dart';

class Convertion {

  var ratesObject = new Rates();

  String from = "";
  String to = "";
  double rate;

  var convertionRates = new List();

  Convertion();

  void initValues() {
    ratesObject.initValues();
    
    convertionRates.add(ratesObject.rates[from]);
    convertionRates.add(ratesObject.rates[to]);
  }

  Convertion.fromJson(Map<String, dynamic> json):
    from = json["from"],
    to = json["to"],
    rate = (json['rate'] != null) ? json['rate'] + 0.0 : 0.0;
}