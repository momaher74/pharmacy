import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PasswordFieldWidget extends StatelessWidget {
  PasswordFieldWidget({
    Key? key,
    required this.controller,
    required this.massage,
    required this.label,
    required this.obsecure,
    required this.onTap,
  }) : super(key: key);
  String massage, label;
  TextEditingController controller;
  bool obsecure;

  Function onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      height: 50,
      child: TextFormField(
        obscureText: obsecure,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            suffixIcon: InkWell(
              onTap: () {
                onTap();
              },
              child: Icon(
                obsecure == true ? Icons.visibility_off : Icons.visibility,
                color: Colors.green,
              ),
            ),
            labelText: label,
            labelStyle: const TextStyle(color: Colors.black),
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.black,
            ))),
        validator: (String? value) {
          if (value!.isEmpty) {
            return massage;
          } else {
            return null;
          }
        },
        controller: controller,
      ),
    );
  }
}
