import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';

class ButtonOne extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final double fsize;

  const ButtonOne({
    super.key,
    required this.text,
    this.textColor = MyColors.grey,
    this.fsize = 40.0,
    this.bgColor = MyColors.dark,
  });

  @override
  Widget build(BuildContext context) {
    final double myWidth = MediaQuery.sizeOf(context).width;
    final double btnHeight = (MediaQuery.sizeOf(context).width) / 4;
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(text),
      child: Container(
        margin: const EdgeInsets.only(left: 2),
        color: bgColor,
        width: myWidth / 4.18,
        height: btnHeight,
        child: Center(
          child: Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(
                fontSize: fsize,
                color: textColor,
              )),
        ),
      ),
    );
  }
}
