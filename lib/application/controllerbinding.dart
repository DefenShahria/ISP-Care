import 'package:get/get.dart';
import 'package:ispcare/bottomnavbar/controller/main_bottom_navbar_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies(){
    Get.put(MainBottomNavController());

  }
}