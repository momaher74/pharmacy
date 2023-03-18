import 'package:clean_arch/utils/widgets/result_widget.dart';
import 'package:clean_arch/utils/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomerHomeScreen extends StatelessWidget {
  CustomerHomeScreen({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
              width: 35,
              height: 40,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Henlth",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SearchWidget(
                searchController: searchController,
                onChange: () {
                  print(searchController.text);
                },
              ),
              const SizedBox(
                height: 50,
              ),
               ResultItem(onTap: (){},),
               ResultItem(onTap: (){},),
               ResultItem(onTap: (){},),
               ResultItem(onTap: (){},),

            ],
          ),
        ),
      ),
    );
  }
}
