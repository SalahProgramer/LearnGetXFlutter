 import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService {
  SharedPreferences? sharedPref;
RxInt counter=0.obs;

  Future<SettingServices> init() async{

    sharedPref=await SharedPreferences.getInstance();
    counter.value= sharedPref!.getInt("counter")?? 0;


    return this;

  }
  increase(){

    counter.value++;
    sharedPref!.setInt("counter", counter.value);
  }



 }