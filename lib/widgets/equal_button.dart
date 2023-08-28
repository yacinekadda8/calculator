import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../provider/cal_provider.dart';

class EqualButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;

  const EqualButton({
    super.key,
    required this.text,
    this.textColor = MyColors.grey,
    this.bgColor = MyColors.dark,
  });

  @override
  Widget build(BuildContext context) {
    final double myWidth = MediaQuery.sizeOf(context).width;
    final double btnHeight = (MediaQuery.sizeOf(context).width) / 4;
    return InkWell(
      onTap: ()=>
        Provider.of<CalculatorProvider>(context, listen: false)
          .setValue("=")
      ,
      child: Container(
        margin: const EdgeInsets.only(left: 2),
        color: bgColor,
        width: myWidth / 4.18,
        height: btnHeight * 2,
        child: Center(
          child: Text(
              textAlign: TextAlign.center,
              text,
              style: TextStyle(
                fontSize: 80,
                color: textColor,
              )),
        ),
      ),
    );
  }
}
