import 'package:get/get.dart';

class MainBottomNavController extends GetxController{
  var currentSelectedIndex = 0;

  void changeScreen(int index){
    currentSelectedIndex = index;
    update();
  }

  void backtoHome(){
    changeScreen(0);
  }

  void backtoSupport(){
    changeScreen(1);
  }

  void backtoPackages(){
    changeScreen(3);
  }
  void backtoMenu(){
    changeScreen(4);
  }
}