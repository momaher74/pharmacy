import 'package:clean_arch/utils/constant.dart';
import 'package:clean_arch/utils/widgets/green_button.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/widgets/logo_widget.dart';

class PharmacyContinue extends StatelessWidget {
  PharmacyContinue({Key? key}) : super(key: key);
  TextEditingController pharmacyAddressController = TextEditingController();
  TextEditingController pharmacyLocationController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String initValue = 'Yes';

  var items = ['Yes', 'No'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const LogoWidget(),
            const SizedBox(
              height: 80,
            ),
            Expanded(
              child: Container(
                width: 100.w,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            controller: pharmacyAddressController,
                            decoration: InputDecoration(
                              hintText: 'Enter pharmacy address manually',
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Constant.gColor,
                                  width: 2,
                                ),
                              ),
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Constant.gColor,
                                  width: 2,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Constant.gColor,
                                  width: 4,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  readOnly: true,
                                  controller: pharmacyLocationController,
                                  decoration: InputDecoration(
                                    hintText: 'Pharmacy location in details',
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Constant.gColor,
                                        width: 2,
                                      ),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Constant.gColor,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Constant.gColor,
                                        width: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[200],
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1 ,
                                      spreadRadius: 4 ,
                                      color: Colors.grey.withOpacity(.8)
                                    )
                                  ]
                                ),
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {
                                      print('5555555555555555');
                                      pharmacyLocationController.text= "gg" ;
                                    },
                                    icon: Icon(
                                      Icons.location_on_outlined,
                                      color: Constant.gColor,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Do you have Delivery in your pharmacy ?",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ),
                              DropdownButton(
                                value: initValue,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: items.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  initValue = newValue!;
                                },
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          GreenButton(
                            onPress: () {
                              if (formKey.currentState!.validate()) {
                                print("VAL");
                              }
                            },
                            text: "Continue",
                            margin: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
