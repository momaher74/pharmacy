import 'package:flutter/material.dart';

import '../constant.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget(
      {Key? key, required this.searchController, required this.onChange})
      : super(key: key);
  TextEditingController searchController;

  Function onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Constant.gColor,
      controller: searchController,
      onChanged: (value) {
        onChange();
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        label: const Text(
          'Search for pharmacy',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
