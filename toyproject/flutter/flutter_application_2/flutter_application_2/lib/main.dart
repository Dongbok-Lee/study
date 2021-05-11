import 'package:flutter/material.dart';
import 'dart:math';
import 'function.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipedetector/swipedetector.dart';
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
  SharedPreferences _prefs;
  String counterKey = 'highscore';
  int combo_score = 0;
  int high_score = 0;
  final List<dynamic> numTable = List.filled(16, ' ');
  dynamic init(table){
    for(int i = 0; i<=15; i++){
      table[i] = ' ';
    }
    table[Random().nextInt(16)] = '2';
  } //초기화 함수
  @override
  void initState(){
    super.initState();
    _loadScore();
  }

  _loadScore() async{
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      high_score = (_prefs.getInt('highscore') ?? 0);
    });
  }
  _saveScore() async{
    _prefs = await SharedPreferences.getInstance();
    setState(() {
    if(combo_score > (_prefs.getInt('highscore') ?? 0)) {
      _prefs.setInt(counterKey, combo_score);
      print(_prefs.getInt('highscore'));
      high_score = (_prefs.getInt('highscore') ?? 0);
      }
    });
  }


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
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text('SCORE\n''$combo_score',style: TextStyle(fontSize: 23, fontFamily:'Caveat',),textAlign: TextAlign.center,),
                      width: 130,
                      height: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 5,
                  color: const Color(0xffBBADA0),
                ),
                borderRadius: BorderRadius.circular(8.0),
                color : const Color(0xffCDC1B4),

                    ),
                ),
                Container(
                  child: Text('HIGH SCORE\n''$high_score',style: TextStyle(fontSize: 23, fontFamily:'Caveat',),textAlign: TextAlign.center,),
                  width: 130,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                        color: const Color(0xffBBADA0),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                    color : const Color(0xffCDC1B4),
                  ),
                ),
              ],
            ),
          ),
          SwipeDetector(
          child:Container(
              child: Container(
               child: Center(
                child: Container(
                  height: 350.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xffBBADA0),
                  ),

                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
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
                  ],
                ),
          ),
              ),),
            ),
            onSwipeRight: (){
              print('right!');
            setState(() {
              combo_score += right(numTable);
              _saveScore();
            });
            },
            onSwipeLeft: (){
              print('left!');
              setState(() {
                combo_score += left(numTable);
                _saveScore();
              });
            },
            onSwipeUp: (){
              print('up!');
              setState(() {
                combo_score += up(numTable);
                _saveScore();
              });
            },
            onSwipeDown: (){
              print('down!');
              setState(() {
                combo_score += down(numTable);
                _saveScore();
              });
            },
          ),
         Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom:10.0),
              child: ElevatedButton(

              onPressed: (){
                setState(() {
                 init(numTable);
                 combo_score = 0;
                 print('init!');
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

