//TODO: Add your imports here.
import 'package:http/http.dart';

import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/BTC';
const apiKey = '4AD7DE52-8429-4506-9C19-854CB5B40989';

class CoinData {
  //TODO: Create your getCoinData() method here.
  Future<dynamic> getCoinData(String currency) async {
    String url = '$coinAPIURL/$currency?apikey=$apiKey';
    Response response = await get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
