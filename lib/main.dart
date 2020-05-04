import 'package:flutter/material.dart';
import './button.dart';

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
    double phoneWidth = MediaQuery.of(context).size.width;
    double phoneLength = MediaQuery.of(context).size.height;
    ThemeData themeData = Theme.of(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          // SizedBox(height: phoneLength * 0.20),
          Expanded(
            flex: 2,
            // width: phoneWidth,
            // color: Colors.grey,
            // height: phoneLength * 0.20,
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
          Container(
            child: GridView.builder(
              padding: EdgeInsets.all(30),
              shrinkWrap: true,
              itemCount: buttons.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Button(
                  text: buttons[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
