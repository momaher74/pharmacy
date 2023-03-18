import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart' ;

class GreenButton extends StatelessWidget {
   GreenButton({Key? key , required this.onPress , required this.text , this.buttonColor ,this.textColor , this.margin}) : super(key: key);
  Function onPress ;
  String text ;
  Color ? buttonColor ;
  Color ? textColor ;
  double ? margin ;

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      height: 50,
      margin:  EdgeInsets.symmetric(horizontal: margin??30),
      child: ElevatedButton(
        onPressed: () {
          onPress();
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor??Colors.green)
        ),
        child:  Text(text  , style: TextStyle(fontSize: 12.sp , color: textColor??Colors.white),),
      ),
    );
  }
}
