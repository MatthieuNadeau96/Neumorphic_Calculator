import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff504BE4),
        accentColor: Color(0xffF9AB09),
        canvasColor: Color(0xffECF0F3),
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
  String userQuery = '69 + 65';
  String userAnswer = '134';

  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Spacer(flex: 1),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  userQuery,
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  userAnswer,
                  style: TextStyle(fontSize: 30, color: themeData.primaryColor),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Expanded(
            flex: 6,
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index) {
                return Text(buttons[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
