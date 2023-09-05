import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';
import '../widgets/big_text.dart';
import '../widgets/weight_age.dart';

class HomePage extends StatelessWidget {

  //const
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bmiProvider = Provider.of<BmiCalculator>(context);
    TextEditingController weightTextController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
        appBar: AppBar(
          title: Text(" BMI CALCULATOR"),
          backgroundColor: Colors.blue[900],
          actions: [Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  bmiProvider.reset();
                },
                child: Icon(
                  Icons.reset_tv_outlined,
                  size: 26.0,
                ),
              )
          ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            //  Image.asset('assets/images/male_symbol.png'),
            // Image(image: AssetImage('assets/images/male_symbol.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: bmiProvider.checkIsPressedMale,

                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        //border: Border.all(width: 5,color: Colors.red,),
                        //border: Border.all(width: 5),
                        borderRadius: BorderRadius.circular(10,)
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(FontAwesomeIcons.mars,
                          size: 60,
                          color: bmiProvider.isMalePressed ?  Colors.red : Colors.white,

                        ),

                        const Text(
                          "MALE",
                          style: TextStyle(
                              fontSize: 14,
                              height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                              color: Colors.black38, //font color
                              fontWeight: FontWeight.w500,                            //backgroundColor: Colors.black12, //background color
                              letterSpacing: 5, //letter spacing
                              //decoration: TextDecoration.underline, //make underline
                              decorationStyle: TextDecorationStyle.double, //double underline
                              decorationColor: Colors.brown, //text decoration 'underline' color
                              //decorationThickness: 2.5, //decoration 'underline' thickness
                              fontStyle: FontStyle.normal
                          ),
                        )
                      ],
                    ),
                    //Image.asset('assets/images/male_symbol.png'), // <-- SEE HERE,
                  ),
                ),
                InkWell(
                  onTap: bmiProvider.checkIsPressedFemale,

                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        // border: Border.all(width: 5,color: Colors.red,),
                        borderRadius: BorderRadius.circular(10,)
                    ),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(FontAwesomeIcons.venus,
                          size: 60,
                          color: bmiProvider.isFemalePressed ?  Colors.red : Colors.white,

                        ),
                        const Text(
                          "FEMALE",
                          style: TextStyle(
                              fontSize: 14,
                              height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                              color: Colors.black38, //font color
                              fontWeight: FontWeight.w500,                            //backgroundColor: Colors.black12, //background color
                              letterSpacing: 5, //letter spacing
                              //decoration: TextDecoration.underline, //make underline
                              decorationStyle: TextDecorationStyle.double, //double underline
                              decorationColor: Colors.brown, //text decoration 'underline' color
                              //decorationThickness: 2.5, //decoration 'underline' thickness
                              fontStyle: FontStyle.normal
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ],
            ),
            SizedBox(height: 20),

            Center(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          // border: Border.all(width: 3,color: Colors.red,),
                          borderRadius: BorderRadius.circular(10,)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text(
                          //   'HEIGHT',
                          //   style: const TextStyle(
                          //       fontSize: 15,
                          //       color: Colors.grey,
                          //       letterSpacing: 5,
                          //       fontWeight: FontWeight.bold,
                          //       //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                          //       //decoration: TextDecoration.underline,
                          //       //decorationStyle: TextDecorationStyle.dashed,
                          //       decorationColor: Colors.green,
                          //       decorationThickness: 1),
                          // ),
                          BigText(bigText: 'HEIGHT(m)', stylTex:TextStyle(
                              fontSize: 15,
                              letterSpacing: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                              //decoration: TextDecoration.underline,
                              decorationStyle: TextDecorationStyle.dashed,
                              decorationColor: Colors.green,
                              decorationThickness: 4),),

                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: BigText(
                              bigText: '${bmiProvider.getHeighDigit().toStringAsFixed(2)}m',
                              stylTex: TextStyle(
                                  fontSize: 30,
                                  letterSpacing: 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                                  //decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.dashed,
                                  decorationColor: Colors.green,
                                  decorationThickness: 4),),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              BigText(bigText: '${bmiProvider.getinches.toStringAsFixed(2)} inch',
                                  stylTex: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 1,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                      //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                                      //decoration: TextDecoration.underline,
                                      decorationStyle: TextDecorationStyle.dashed,
                                      decorationColor: Colors.green,
                                      decorationThickness: 4)),

                              BigText(bigText: '${bmiProvider.feetValue.toStringAsFixed(2)} Ft',
                                  stylTex: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 1,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                      //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                                      //decoration: TextDecoration.underline,
                                      decorationStyle: TextDecorationStyle.dashed,
                                      decorationColor: Colors.green,
                                      decorationThickness: 4)),
                            ],
                          ),

                          Slider(
                            value: bmiProvider.getHeighDigit(),
                            activeColor: Colors.white,
                            inactiveColor: Colors.grey,
                            thumbColor: Colors.red,
                            //_currentSliderValue,
                            min: 0.0,
                            max: 3.0,
                            divisions:100,
                            label: bmiProvider.getHeighDigit().round().toStringAsFixed(2),
                            onChanged: (double value) {
                              bmiProvider.heightScale = value;
                            },
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height:20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     Column(
            //       children: [
            //
            //         Container(
            //           width: 150,
            //           height: 150,
            //           decoration: BoxDecoration(
            //               color: Colors.blueAccent,
            //               //border: Border.all(width: 5,color: Colors.red,),
            //               borderRadius: BorderRadius.circular(10,)
            //           ),
            //         ),
            //       ],
            //     ),
            //     Container(
            //       width: 150,
            //       height: 150,
            //       decoration: BoxDecoration(
            //           color: Colors.blueAccent,
            //           //border: Border.all(width: 5,color: Colors.red,),
            //           borderRadius: BorderRadius.circular(10,)
            //       ),
            //     )
            //
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WeightAndAge(bioName: 'WEIGHT(kg)',
                  onpressAddBtn: bmiProvider.addDigit,
                  onpressMinusBtn: bmiProvider.minusDigit,
                  //textform: 'q',
                  bigText: '${bmiProvider.getWeightDigit()}',
                  icon_one_Data: FontAwesomeIcons.circlePlus,
                  icon_two_Data: FontAwesomeIcons.circleMinus, ),

                WeightAndAge(bioName: 'AGE',
                    bigText: "${bmiProvider.getAgeDigit()}",
                    onpressAddBtn: bmiProvider.addAge,
                    onpressMinusBtn: bmiProvider.minusAge,

                    icon_one_Data: FontAwesomeIcons.circlePlus,
                    icon_two_Data: FontAwesomeIcons.circleMinus ),
              ],
            ),
            SizedBox(height:20),

            // TextButton(
            //
            //   child: Text('CALCULATE'),
            //
            //   style: TextButton.styleFrom(
            //     foregroundColor: Colors.red,
            //     backgroundColor: Colors.blue[500],
            //     elevation: 3,
            //     shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            //   ),
            //   onPressed: () {
            //     print('Pressed');
            //   },
            // )
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900],
                  foregroundColor: Colors.white,
                  minimumSize: const Size.fromHeight(80),
                ),
                onPressed:  () {
                  if (bmiProvider.getWeightDigit() >0 &&  bmiProvider.getHeighDigit()>0){
                    bmiProvider.calculateBMI(
                        bmiProvider.getWeightDigit(),
                        bmiProvider.getHeighDigit());
                    Navigator.of(context).push(_createRoute());
                  }
                },
                child: const Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const ResultScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.elasticIn;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}