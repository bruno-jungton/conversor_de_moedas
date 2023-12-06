import 'package:flutter/material.dart';
//import 'package:sky_engine/_http/http.dart' as http;
//import 'dart:async';
//import 'dart:convert';

//const request = "https://api.hgbrasil.com/finance/quotations?key=233e6230";

void main() async {
  runApp(const MaterialApp(home: Home()));
}

/*Future<Map> getData() async {
  http.HttpResponse response = await http.get(request);
  return json.decode(response.body);
}
*/
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("\$ Conversor \$"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: FutureBuilder<Map>(
          //    future: getData(),
          builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const Center(
                child: Text(
              "Carregando Dados...",
              style: TextStyle(color: Colors.amber, fontSize: 25.0),
              textAlign: TextAlign.center,
            ));
          default:
            if (snapshot.hasError) {
              return const Center(
                  child: Text(
                "Erro ao Carregar Dados",
                style: TextStyle(color: Colors.amber, fontSize: 25.0),
                textAlign: TextAlign.center,
              ));
            } else {
              return Container(
                color: Colors.green,
              );
            }
        }
      }),
    );
  }
}
