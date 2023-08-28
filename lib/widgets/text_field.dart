import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    //required this.resController,
  });
  final TextEditingController controller;
  //final TextEditingController resController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              fillColor: MyColors.black,
              filled: true,
            ),
            style: const TextStyle(fontSize: 40),
            readOnly: true,
            autofocus: true,
            showCursor: true,
          ),
          /*
          TextField(
            controller: resController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              fillColor: MyColors.black,
              filled: true,
            ),
            style: const TextStyle(fontSize: 40),
            readOnly: true,
          ),*/
        ],
      ),
    );
  }
}
