import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  // ignore: prefer_final_fields
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StatefulWidget"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "Numero de click",
            style: TextStyle(fontSize: 25),
          ),
          Text(
            "$_counter",
            style: const TextStyle(fontSize: 40),
          )
        ],
      )),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      const SizedBox(
        width: 15,
      ),
      FloatingActionButton(
        onPressed: _reset,
        child: const Icon(Icons.exposure_zero),
      ),
      const Expanded(child: SizedBox()),
      FloatingActionButton(
        onPressed: _decremento,
        child: const Icon(Icons.remove),
      ),
      const SizedBox(
        width: 5,
      ),
      FloatingActionButton(
          onPressed: _incremento, child: const Icon(Icons.add)),
      const SizedBox(
        width: 15,
      ),
    ]);
  }

  void _incremento() {
    _counter++;
    setState(() {});
  }

  void _decremento() {
    _counter--;
    setState(() {});
  }

  void _reset() {
    _counter = 0;
    setState(() {});
  }
}
