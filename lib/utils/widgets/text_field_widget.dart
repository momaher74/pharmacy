import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart' ;

class TextFieldWidget extends StatelessWidget {
   TextFieldWidget({Key? key , required this.controller , required this.massage , required this.label}) : super(key: key);
  String massage , label;
  TextEditingController controller ;

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: 80.h,
      height: 50,
      child: TextFormField(
        cursorColor: Colors.black,
        decoration:  InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(color: Colors.black),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black ,
                )
            )
        ),
        validator:(String ? value){
          if(value!.isEmpty){
            return massage ;
          }
        },
        controller: controller,

      ),
    ) ;
  }
}
