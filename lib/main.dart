import 'package:flutter/material.dart';
import 'package:productivity_timer/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your app name',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TimerHomePage(),
    );
  }

}

class TimerHomePage extends StatelessWidget {

  void emptyMethod(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Work Timer'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(
                    child:ProductivityButton(color: Color(0xff009688),
                        text: 'Work', onPressed: (){emptyMethod();}, size: 20)
                ),
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(
                    child:ProductivityButton(color: Color(0xff607D8B),
                        text: 'Short Break', onPressed: (){emptyMethod();}, size: 20)
                ),
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(
                    child:ProductivityButton(color: Color(0xff455A64),
                        text: 'Long Break', onPressed: (){emptyMethod();}, size: 20)
                ),
              ],
            ),
            Expanded(
              child: CircularPercentIndicator(
                radius: 130,
                lineWidth: 10.0,
                percent: 1,
                center: Text('30.00',
                style: Theme.of(context).textTheme.displaySmall,),
                progressColor: Color(0xff009688),

              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(
                    child:ProductivityButton(color: Color(0xff212121),
                        text: 'Stop', onPressed: (){emptyMethod();}, size: 20)
                ),
                Padding(padding: EdgeInsets.all(5.0),),
                Expanded(
                    child:ProductivityButton(color: Color(0xff009688),
                        text: 'Reset', onPressed: (){emptyMethod();}, size: 20)
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
