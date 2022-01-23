import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      //padding: EdgeInsets.all(10),
      width: double.infinity.w,
      height: ScreenUtil().orientation == Orientation.portrait
          ? MediaQuery.of(context).size.height * 0.3
          : MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 5,
              offset: const Offset(0, 3),
            )
          ],
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          image: const DecorationImage(
              image: AssetImage('assets/images/logo.jpg'), fit: BoxFit.cover)),
    );
  }
}
