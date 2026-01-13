import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Damian Calculadora',
      theme: ThemeData(
      
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 84, 157, 206)),
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController _ctrlDisplay =TextEditingController(text: "");
  double aux1 = 0;
  double aux2 = 0;
  String operacion = "";

  void setAux1(String sim) {
    operacion = sim;
    aux1 = double.parse(_ctrlDisplay.text);
    _ctrlDisplay.text = "";
  }

  void setAux2(){
    aux2 = double.parse(_ctrlDisplay.text);
    _ctrlDisplay.text = "";
  }

  void calcular(){
    double resulado = 0;
    if ( operacion == "+" ) {
      resulado = aux1 + aux2;
    } else if ( operacion == "-" ) {
      resulado = aux1 - aux2;
    } else if (operacion == "x") {
      resulado = aux1 * aux2;
    } else if (operacion == "/") {
      resulado = aux1 / aux2;
  }
    _ctrlDisplay.text = "${resulado}";
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Column(children:[
          TextField(
            controller: _ctrlDisplay,
            decoration: InputDecoration(
              labelText: ''
            ),
          ),
        Row(children:[
            BtnLight(numero: "7",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}7";
            },
            ),
            BtnLight(numero: "8",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}8";
            },),
            BtnLight(numero: "9",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}9";
            },),
            BtnDark(signo: "x",onClick: (String numero){
              setAux1("x");
              print("Main:$numero");
            },),
        ],
      ),
      Row(children:[
             BtnLight(numero: "4",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}4";
            },
            ),
            BtnLight(numero: "5",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}5";
            },
            ),
            BtnLight(numero: "6",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}6";
            },
            ),
            BtnDark(signo: "-",onClick: (String numero){
              setAux1("-");
              print("Main:$numero");
            },
            ),
        ],
      ),
      Row(children:[
            BtnLight(numero: "1",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}1";
            },
            ),
            BtnLight(numero: "2",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}2";
            },),
            BtnLight(numero: "3",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}3";
            },),
            BtnDark(signo: "+",onClick: (String numero){
              setAux1("+");
              print("Main:$numero");
            },),
        ],
      ),
        Row(children:[
            BtnDark(signo: "/",onClick: (String numero){
              setAux1("/");
              print("Main:$numero");
            },),
            BtnLight(numero: "0",onClick: (String numero){
              print("Main:$numero");
              _ctrlDisplay.text =  "${_ctrlDisplay.text}0";
            },),
            BtnDark(signo: ".",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnDark(signo: "=",onClick: (String numero){
              setAux2();
              calcular();
              print("Main:$numero");
            },),
        ],)
      ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
