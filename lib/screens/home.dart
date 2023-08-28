// ignore_for_file: prefer_const_constructors

import 'package:calculator/constants/colors.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/widget_list.dart';
import '../widgets/equal_button.dart';
import '../widgets/text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //final double myHeight = MediaQuery.sizeOf(context).height;
    final double myWidth = MediaQuery.sizeOf(context).width;
    const padding = EdgeInsets.symmetric(horizontal: 4, vertical: 4);

    return Scaffold(
      //appBar: AppBar(title: const Text('Calculator')),
      body: Consumer<CalculatorProvider>(builder: (context, provider, _) {
        return Scaffold(
          backgroundColor: MyColors.black,
          body: Column(children: [
            SizedBox(height: 40.0),
            Expanded(
                child: CustomTextField(
              controller: provider.compController,
              //resController: provider.res,
            )),
            Container(
              color: MyColors.black,
              //height: myHeight * .7,
              width: myWidth,
              padding: padding,
              child: Column(
                children: [
                  Row(children: List.generate(4, (index) => buttonList[index])),
                  const Divider(height: 2),
                  Row(
                      children:
                          List.generate(4, (index) => buttonList[index + 4])),
                  const Divider(height: 2),
                  Row(
                      children:
                          List.generate(4, (index) => buttonList[index + 8])),
                  const Divider(height: 2),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                              children: List.generate(
                                  3, (index) => buttonList[index + 12])),
                          const Divider(height: 2),
                          Row(
                              children: List.generate(
                                  3, (index) => buttonList[index + 15])),
                        ],
                      ),
                      const EqualButton(
                        text: "=",
                        bgColor: MyColors.gold,
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        );
      }),
    );
  }
}
