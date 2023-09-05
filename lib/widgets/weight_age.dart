import 'package:flutter/material.dart';

class WeightAndAge extends StatelessWidget {
  const WeightAndAge({Key? key,
    required this.bioName,
    required this.icon_one_Data,
    required this.icon_two_Data,
    this.bigText = '',
    required this.onpressAddBtn,
    required this.onpressMinusBtn,

  })
      : super(key: key);

  final String bioName;
  final IconData icon_one_Data;
  final IconData icon_two_Data;
  final String bigText;
  final Function onpressAddBtn;
  final Function onpressMinusBtn;



  @override
  Widget build(BuildContext context) {
    TextEditingController txt = TextEditingController();
    return
      Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            //border: Border.all(width: 5,color: Colors.red,),
            borderRadius: BorderRadius.circular(10,)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              bioName,
              style: TextStyle(
                  fontSize: 14,
                  height: 2, //line height 200%, 1= 100%, were 0.9 = 90% of actual line height
                  color: Colors.grey, //font color
                  fontWeight: FontWeight.w500,                            //backgroundColor: Colors.black12, //background color
                  letterSpacing: 5, //letter spacing
                  //decoration: TextDecoration.underline, //make underline
                  decorationStyle: TextDecorationStyle.double, //double underline
                  decorationColor: Colors.brown, //text decoration 'underline' color
                  //decorationThickness: 2.5, //decoration 'underline' thickness
                  fontStyle: FontStyle.normal
              ),
            ),

            Text(
              bigText,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  //shadows: [Shadow(offset: Offset(0, -20), color: Colors.black)],
                  //decoration: TextDecoration.underline,
                  //decorationStyle: TextDecorationStyle.dashed,
                  decorationColor: Colors.green,
                  decorationThickness: 1),
            ),




            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Material(
                  color: Colors.transparent,
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  child: IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: Icon(icon_two_Data,
                        size: 30,),
                      color: Colors.white,
                      splashColor: Colors.white70,
                      onPressed: () {
                        onpressMinusBtn();
                       // print("Pressed");
                      }
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  shape: CircleBorder(),
                  clipBehavior: Clip.hardEdge,
                  child: IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                      icon: Icon(icon_one_Data,
                        size: 30,),
                      color: Colors.white,
                      splashColor: Colors.white,
                      onPressed: () {
                        onpressAddBtn();
                        // print("Pressed");
                      }
                  ),
                ),
              ],

            )

          ],
        ),
      );
  }
}
