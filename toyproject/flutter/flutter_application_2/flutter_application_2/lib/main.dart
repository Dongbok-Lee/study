import 'package:flutter/material.dart';
import 'dart:math';
import 'numtable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2048',
      theme: ThemeData(
        primarySwatch: Colors.grey
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<dynamic> numTable = List.filled(16, ' ');
  dynamic init(table){
    for(int i = 0; i<=15; i++){
      table[i] = ' ';
    }
    table[Random().nextInt(16)] = '2';
  } //초기화 함수


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2048'),
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Caveat',
          ),
        ),
        backgroundColor: const Color(0xff786F66),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Container(
              height:200,
            ),
          ),
          Container(
              child: Container(
               child: Center(
                child: Container(
                  height: 350.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xffBBADA0),
                  ),

                child: Expanded(
                  child: GridView.builder(
                    itemCount: numTable.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemBuilder:(BuildContext context, int index){
                        return MyTable(
                          buttonText: numTable[index],
                          color: tableColor(numTable[index]),
                          textColor: textColor(numTable[index]),
                        );
                    },
                  ),
                ),
          ),
              ),),
            ),
         Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: ElevatedButton(

              onPressed: (){
                setState(() {
                 init(numTable);
                });
              },
              child: Text('Refresh'),
          ),
            ),
          ),
        ],
      )
    );
  }
}
tableColor(context){
  var color;

  switch (context){
    case ' ':
      color = const Color(0xffCDC1B4);
      break;
    case '2':
      color = const Color(0xffEEE4DA);
      break;
    case '4':
      color = const Color(0xffeee1c9);
      break;
    case '8':
      color = const Color(0xffF3B27A);
      break;
    case '16':
      color = const Color(0xffF69664);
      break;
    case '32':
      color = const Color(0xffF77C5F);
      break;
    case '64':
      color = const Color(0xffF7603B);
      break;
    case '128':
      color = const Color(0xffEDD073);
      break;
    case '256':
      color = const Color(0xffEDD073);
      break;
    case '512':
      color = const Color(0xffEDD073);
      break;
    case '1024':
      color = const Color(0xffEDD073);
      break;
    case '2048':
      color = const Color(0xffEDD073);
      break;
  }
  print(color);
  return color;
}
textColor(context){
  
  var color;
  
  if(context == '2' || context == '4'){
    color = const Color(0xff000000);
  }else{
    color = const Color(0xffffffff);
  }
  return color;
}

