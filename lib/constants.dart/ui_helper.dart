import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper{
  UIHelper._();

  static double getAppTitleImageHeight(){
    return ScreenUtil().orientation == Orientation.portrait ? 0.3.sh : 0.2.sw; 
  }
}