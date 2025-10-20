import 'package:flutter/material.dart';

Widget kCard(String cardText, VoidCallback onPress) {
  return SizedBox(
    width: 300,
    child: TextButton(
      onPressed: onPress,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 50),
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            cardText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
  );
}
