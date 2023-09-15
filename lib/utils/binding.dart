import 'package:get/get.dart';
import 'package:getx/controller/homeController.dart';

class Binding implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController(),permanent: true);

    // TODO: implement dependencies
  }





}