import 'network.dart';

class PriceGetter {
  String apiKey = 'D2A8F291-4903-4FD5-AA48-14D58BC17304';
  String? coinTicker;
  String fiatCurrency = 'USD';

  PriceGetter(this.fiatCurrency, this.coinTicker);

  Future<dynamic> getPriceData() async {
    NetworkHelper networkHelper = NetworkHelper('https://rest.coinapi.io/v1/exchangerate/$coinTicker/$fiatCurrency?apikey=D2A8F291-4903-4FD5-AA48-14D58BC17304');
    var priceData = await networkHelper.getData();
    return priceData['rate'];
  }
}
