import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ResultItem extends StatelessWidget {
  ResultItem({Key? key, required this.onTap}) : super(key: key);
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 12),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow:  [
            BoxShadow(
              blurRadius: 12,
              spreadRadius: 3,
              offset: const Offset(0, 10),
              color: Colors.grey.withOpacity(.7),

            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/drug.png'),
              width: 40,
              height: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "drugName ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.sp),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "50 EGP",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.sp,
                        color: Colors.green),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ) ,
          ],
        ),
      ),
    );
  }
}
