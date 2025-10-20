import 'package:bitcoin_ticker/constants.dart';
import 'package:bitcoin_ticker/price_screen.dart';
import 'package:flutter/material.dart';

class CoinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cryptocurrencies'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            kCard('Bitcoin', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PriceScreen('BTC');
                }),
              );
            }),
            kCard('Ethereum', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PriceScreen('ETH');
                }),
              );
            }),
            kCard('DogeCoin', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return PriceScreen('DOGE');
                }),
              );
            }),
          ],
        ),
      ),
    );
  }
}