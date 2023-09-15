// import 'package:get/get.dart';
//
// class HomeController extends GetxController{
//
//   int counter1=0;
//   int counter2=0;
//
//   void increment1(){
//     counter1++;
//     update();
//
//   }
//   void decrement1(){
//     counter1--;
//
//     update();
//   }
//   void increment2(){
//     counter2++;
//
//     update();
//
//   }
//   void decrement2(){
//     counter2--;
//
//     update();
//   }
//   int get  total=>counter1+counter2;
//
// }
import 'package:get/get.dart';

class HomeController extends GetxController{

  int counter1=0;
  // RxInt counter2=0.obs;

  void increment1(){
    counter1++;
    update();
    print(counter1.toString());

  }
  void decrement1(){
    counter1--;
    update();

  }
  // void increment2(){
  //   counter2++;
  //
  //
  // }
  // void decrement2(){
  //   counter2--;
  //
  // }
  // int get  total=>counter1.value+counter2.value;

}