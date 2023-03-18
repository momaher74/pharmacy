import 'package:flutter/material.dart';

import '../constant.dart';

class AddFieldWidget extends StatelessWidget {
  AddFieldWidget(
      {Key? key,
      required this.textEditingController,
      required this.massage,
      required this.hintText})
      : super(key: key);
  TextEditingController textEditingController;

  String massage, hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Constant.gColor,
      validator: (value) {
        if (value!.isEmpty) {
          return massage;
        } else {
          return null;
        }
      },
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Constant.gColor,
          ),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Constant.gColor,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Constant.gColor,
          ),
        ),
      ),
      enabled: true,
    );
  }
}
