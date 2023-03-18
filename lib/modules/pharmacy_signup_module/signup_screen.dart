import 'package:clean_arch/utils/widgets/green_button.dart';
import 'package:clean_arch/utils/widgets/password_field.dart';
import 'package:clean_arch/utils/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/widgets/logo_widget.dart';

class PharmacyRegister extends StatelessWidget {
  PharmacyRegister({Key? key}) : super(key: key);
  TextEditingController pharmacyNameController = TextEditingController();
  TextEditingController drNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
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
                          TextFieldWidget(
                            controller: pharmacyNameController,
                            massage: "please , enter your pharmacy name here",
                            label: 'Pharmacy name',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            controller: pharmacyNameController,
                            massage: "please , enter Dr name here",
                            label: 'Dr name',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            controller: emailController,
                            massage: "please , enter your email here",
                            label: 'email',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFieldWidget(
                            controller: emailController,
                            massage: "please , enter your phone number",
                            label: 'phone',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          PasswordFieldWidget(
                            obsecure: true,
                            onTap: () {
                              print(55555555555555);
                            },
                            controller: passwordController,
                            massage: "please , enter your password here",
                            label: 'password',
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          PasswordFieldWidget(
                            obsecure: true,
                            onTap: () {
                              print(55555555555555);
                            },
                            controller: confirmController,
                            massage:
                                "please , enter your confirm password here",
                            label: 'confirm password',
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
                            text: "Sign Up  ",
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
