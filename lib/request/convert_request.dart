// 'https://api.exchangerate.host/convert?from=EUR&to=GBP&amount=10'//+ acce hey

import 'dart:convert';

import 'package:convertor/request/api_key.dart';
import 'package:http/http.dart' as http;

import 'dart:async';

Future<String> convert_data(
  String country_one,
  String country_two,
  String amount,
) async {
  final url = Uri.https('api.exchangerate.host', '/convert', {
    'access_key': api_key,
    'from': country_one,
    'to': country_two,
    'amount': amount,
  });
  print(url);
  final response = await http.get(url);
  print(response.statusCode);
  final data = json.decode(response.body);

  if (data['success']) {
    print(data['result']);
    return data['result'].toString();
  } else {
    return convert_data(country_one, country_two, amount);
  }
}
