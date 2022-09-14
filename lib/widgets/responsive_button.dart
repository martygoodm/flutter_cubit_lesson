import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc_dbtech/misc/colors.dart';
import 'package:flutter_bloc_dbtech/widgets/app_text.dart';

class AppResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  AppResponsiveButton({
    Key? key,
    this.isResponsive = false,
    this.width = 120,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: EdgeInsets.only(left: 20),
                    child: AppText(text: "Book Trip now", color: Colors.white),
                  )
                : Container(),
            Image.asset("assets/img/button-one.png"),
          ],
        ),
      ),
    );
  }
}
