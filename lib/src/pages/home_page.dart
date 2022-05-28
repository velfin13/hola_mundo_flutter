import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "Numero de click",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "0",
            style: TextStyle(fontSize: 40),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ignore: avoid_print
          print("hola mundo");
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
