import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_currency_conversion/model/convertion.dart';
import 'package:flutter_currency_conversion/model/rates.dart';
import 'package:flutter_currency_conversion/error/api_error.dart';

class Service {
  
  String url = "https://v3.exchangerate-api.com/";
  String apiKey = "defff1f9da263b5ebd3017ac";

  String currencyParam = "";

  String fromParam = "";
  String toParam = "";

  String get rates {
    return url + "bulk/" + apiKey + "/";
  }

  String get convertion {
    return url + "pair/" + apiKey + "/";
  }

  dynamic getRates() async {
    var url = rates + currencyParam;
    final response = await http.get(url);
    final map = json.decode(response.body);

    if (map["result"] == "success") {
      final ratesJSON = map["rates"];
      final ratesObject = new Rates.fromJson(ratesJSON);

      ratesObject.initValues();
      
      return ratesObject.rates;
    }
    else {
      final error = new ApiError.fromJson(map);
      return error;
    }
  }

  dynamic getConvertion() async {
    var url = convertion + fromParam + "/" + toParam;
    final response = await http.get(url);
    final map = json.decode(response.body);

    if (map["result"] == "success") {
      final convertionObject = new Convertion.fromJson(map);
      
      convertionObject.initValues();

      return convertionObject;
    }
    else {
      final error = new ApiError.fromJson(map);
      return error;
    }
  }

}