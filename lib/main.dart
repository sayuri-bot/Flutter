import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lopez Calculadora',
      theme: ThemeData(
      
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
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
          Text("1"),
          Text("2"),
          Row(children:[
            ElevatedButton(onPressed: () {}, child: Text("a")),
            ElevatedButton(onPressed:() {}, child: Text("b")),
            ElevatedButton(onPressed:() {}, child: Text("C")),

          ],
        ),
        Row(children:[
            BtnLight(numero: "7",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            BtnLight(numero: "8",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnLight(numero: "9",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnDark(signo: "x",onClick: (String numero){
              print("Main:$numero");
            },),
        ],
      ),
      Row(children:[
             BtnLight(numero: "4",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            BtnLight(numero: "5",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            BtnLight(numero: "6",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            BtnDark(signo: "-",onClick: (String numero){
              print("Main:$numero");
            },
            ),
        ],
      ),
      Row(children:[
            BtnLight(numero: "1",onClick: (String numero){
              print("Main:$numero");
            },
            ),
            BtnLight(numero: "2",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnLight(numero: "3",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnDark(signo: "+",onClick: (String numero){
              print("Main:$numero");
            },),
        ],
      ),
        Row(children:[
            BtnDark(signo: "x/",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnLight(numero: "0",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnDark(signo: ".",onClick: (String numero){
              print("Main:$numero");
            },),
            BtnDark(signo: "=",onClick: (String numero){
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
