import 'package:flutter/material.dart';

import '../constant.dart';
import 'package:sizer/sizer.dart' ;

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
     child:   Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image(image: AssetImage(Constant.logo,) ,width: 73,height: 61,) ,
         Column(
           children: [
             Text('Henlth', style: TextStyle(fontSize: 25.sp , fontWeight: FontWeight.bold),),
             const SizedBox(height: 3,),
             Text('Find Your pharmacy', style: TextStyle(fontSize: 12.sp , fontWeight: FontWeight.normal),),
           ],
         )
       ],
     ),
    );
  }
}
