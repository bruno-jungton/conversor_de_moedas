import 'package:flutter/material.dart';
import 'package:sky_engine/_http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

const request = "https://api.hgbrasil.com/finance/quotations?key=233e6230";

void main() async {
  // http.HttpResponse response = await http.get(request);
  //json.decode(response.body);
  runApp(MaterialApp(home: Container()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
