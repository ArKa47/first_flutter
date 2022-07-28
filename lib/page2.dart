import 'package:flutter/material.dart';

SnowPage() {
  final ButtonStyle style =
  ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold), primary: Colors.greenAccent, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20));
    return Center(
      child: ElevatedButton(
        style: style,
        onPressed: () {},
        child: const Text('Enabled'),
      ),
    );
}