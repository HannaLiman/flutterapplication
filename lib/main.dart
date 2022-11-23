import 'package:flutter/material.dart';

void main() => runApp(new CalculatorApp());

//Class for creatig flutter app
class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Calculator'),
          ),
        ),
        body: new CalculatorPage(),
      ),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //creates body for entire calculator
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          //creates padding for whole body
          padding: EdgeInsets.all(16.0),

          //creates UI for display
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 3, //flex creates amounts of axes for children
                child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 10.0), //adding space under screen
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.white),
              ),

              //Creates the calculators button UI
              Flexible(
                flex: 4,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //row 1:
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("7")),
                              Flexible(flex: 1, child: CustomButton("8")),
                              Flexible(flex: 1, child: CustomButton("9")),
                              Flexible(flex: 1, child: CustomButton("+"))
                            ],
                          ),
                        ),
                      ),

                      //row 2:
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("4")),
                              Flexible(flex: 1, child: CustomButton("5")),
                              Flexible(flex: 1, child: CustomButton("6")),
                              Flexible(flex: 1, child: CustomButton("-"))
                            ],
                          ),
                        ),
                      ),

                      //row 3:
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(flex: 1, child: CustomButton("1")),
                              Flexible(flex: 1, child: CustomButton("2")),
                              Flexible(flex: 1, child: CustomButton("3")),
                              Spacer(flex: 1),
                            ],
                          ),
                        ),
                      ),

                      //row 4:
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            //crossAxisAlignment.start makes the button start from the left
                            children: <Widget>[
                              Flexible(flex: 2, child: CustomButton("0")),
                              Spacer(flex: 1),
                              Flexible(flex: 1, child: CustomButton("=")),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Created class for the buttons style
class CustomButton extends StatelessWidget {
  String text;

  CustomButton(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(6.0),
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          color: Colors.grey),
      child: Text(
        text,
        style: new TextStyle(color: Colors.white, fontSize: 22.0),
      ),
    );
  }
}
