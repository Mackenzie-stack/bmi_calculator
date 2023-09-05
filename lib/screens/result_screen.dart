import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';
import '../widgets/big_text.dart';
import 'home_page.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bmiProvider = Provider.of<BmiCalculator>(context);

    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(title: Text('BMI CALCULATOR'),),
      body: Column(
        children: [
          // This Cent
          SizedBox(height: 20),
          Center(
            child: Column(
              children: [
                BigText(stylTex: TextStyle(
                    fontSize: 25,
                    letterSpacing: 5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                    //decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed,
                    decorationColor: Colors.green,
                    decorationThickness: 4),
                    bigText: 'YOUR RESULT'),

                SizedBox(height: 20),

                Center(
                    child: Container(
                      width: 300,
                      height: 400,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          // border: Border.all(width: 5,color: Colors.red,),
                          borderRadius: BorderRadius.circular(10,)
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BigText(stylTex: TextStyle(
                              fontSize: 15,
                              letterSpacing: 5,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                              //decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed,
                              decorationColor: Colors.green,
                              decorationThickness: 4),
                              bigText: bmiProvider.resultCategory),
                          BigText(stylTex: TextStyle(
                              fontSize: 80,
                              letterSpacing: 5,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                              //decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed,
                              decorationColor: Colors.green,
                              decorationThickness: 4),
                              bigText: bmiProvider.getBmiAnswer().toStringAsFixed(2)),
                          BigText(stylTex: TextStyle(
                              fontSize: 15,
                              letterSpacing: 5,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                              //decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed,
                              decorationColor: Colors.green,
                              decorationThickness: 4),
                              bigText: bmiProvider.resultCategory),
                        ],
                      ),
                    )
                ),

              ],
            ),
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[900],
                foregroundColor: Colors.white,
                minimumSize: const Size.fromHeight(80),
              ),
              onPressed:  () {
                bmiProvider.reset();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage()));

              },
              child: const Text(
                'NEW CALCULATION',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
