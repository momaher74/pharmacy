import 'package:clean_arch/modules/customer_signup_module/signup_screen.dart';
import 'package:clean_arch/modules/login_module/login_screen.dart';
import 'package:clean_arch/modules/pharmacy_signup_module/signup_screen.dart';
import 'package:clean_arch/utils/constant.dart';
import 'package:clean_arch/utils/widgets/green_button.dart';
import 'package:clean_arch/utils/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10.h,
              child: const LogoWidget(),
            ),
            Positioned(
              bottom: -60,
              child: Container(
                width: 100.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      GreenButton(
                        onPress: () {
                          push(context, CustomerRegister());
                        },
                        text: 'Create Customer Account',
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GreenButton(
                        onPress: () {
                          push(context, PharmacyRegister());
                        },
                        text: 'Create Pharmacy  Account',
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Already have an account ?',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GreenButton(
                        onPress: () {
                          push(context, LoginScreen());
                        },
                        text: 'Sign in',
                        buttonColor: Colors.white,
                        textColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
