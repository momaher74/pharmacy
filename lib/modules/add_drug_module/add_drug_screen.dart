import 'package:clean_arch/utils/widgets/add_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/widgets/green_button.dart';
import '../../utils/widgets/logo_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddDrugScreen extends StatelessWidget {
  AddDrugScreen({Key? key}) : super(key: key);

  TextEditingController drugNameController = TextEditingController();
  TextEditingController drugPriceController = TextEditingController();
  TextEditingController drugMolController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
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
                  padding: const EdgeInsets.all(80),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          AddFieldWidget(
                              textEditingController: drugNameController,
                              massage: "please add name of drug",
                              hintText: 'Drug name'),
                          const SizedBox(
                            height: 20,
                          ),
                          AddFieldWidget(
                              textEditingController: drugPriceController,
                              massage: "please add price of drug",
                              hintText: 'Drug price'),
                          const SizedBox(
                            height: 20,
                          ),
                          AddFieldWidget(
                              textEditingController: drugMolController,
                              massage: "please add mol of drug",
                              hintText: 'Drug mol'),
                          const SizedBox(
                            height: 88,
                          ),
                          GreenButton(
                            onPress: () async {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                email: "mokfopishdfjhgg@gmail.com",
                                password: "123456789",
                              )
                                  .then((value) {
                                print(value);
                                print('99999999999999999999');
                              }).catchError((error) {
                                print('errrrrrrrrr $error');
                              });
                            },
                            text: "Add Drug",
                            margin: 0,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GreenButton(
                            onPress: () async {
                            FirebaseAuth auth = FirebaseAuth.instance;
                             auth.signOut().then((value) {
                              print('outttttttttttt') ;
                            }).catchError((error){
                              print('error $error') ;
                            }) ;
                            },
                            text: "out",
                            margin: 0,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          GreenButton(
                            onPress: () async {
                             FirebaseAuth.instance.signInWithEmailAndPassword(email: 'mokfopishdfjhgg@gmail.com', password: "123456789").then((value) {
                               print('logged in') ;
                             }).catchError((error){
                               print('error $error') ;
                             });
                            },
                            text: "login",
                            margin: 0,
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                        ],
                      ),
                    ),
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
