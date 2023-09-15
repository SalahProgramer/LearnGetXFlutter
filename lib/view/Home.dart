// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx/view/main.dart';
// import 'package:getx/view/pagefour.dart';
// import 'package:getx/view/pageone.dart';
// import 'package:getx/view/pagethree.dart';
// import 'package:getx/view/pagetwo.dart';
//
// import '../controller/homeController.dart';
// import '../utils/binding.dart';
//
// class Home extends StatelessWidget {
//    Home({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//
//       child: Scaffold(
//         body: Center(
//
//           child: Container(
//             width: 200,
//             child: Column(
//
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 ElevatedButton(onPressed: (){
//                   sharedPref!.clear();
//                   Get.offAllNamed("/");
//
//           // Get.to(()=> pageone());
//           },
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.red),child: Text("LogOut")),
//                 // ElevatedButton(onPressed: (){
//                 //
//                 //   Get.to(()=> pageone());
//                 // }, child: Text("Page one")),
//                 // ElevatedButton(onPressed: (){
//                 //   Get.to(pagetwo());
//                 //
//                 // }, child: Text("Page two"))
//
//                 // ElevatedButton(onPressed: (){
//                 //   Get.to(pagethree());
//                 //
//                 // }, child: Text("Page three")),
//                 // ElevatedButton(onPressed: (){
//                 //   Get.to(pagefour());
//                 //
//                 // }, child: Text("Page four"))
//
//
//
//
//               ],
//             ),
//           ),
//
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Services/ServicesSttings.dart';
import 'package:getx/view/main.dart';
import 'package:getx/view/pagefour.dart';
import 'package:getx/view/pageone.dart';
import 'package:getx/view/pagethree.dart';
import 'package:getx/view/pagetwo.dart';

import '../controller/homeController.dart';
import '../utils/binding.dart';

class Home extends GetView<SettingServices> {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(


      child: Scaffold(
        body: Center(

          child: Container(
            width: 200,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GetX<SettingServices>(builder: (controller) {
                  return Text(controller.counter.value.toString());


                },),
                ElevatedButton(onPressed: (){
                 controller.increase();
                  // Get.to(()=> pageone());
                },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),child: Text("add")),
                ElevatedButton(onPressed: (){
                  controller.sharedPref?.clear();
                  // Get.to(()=> pageone());
                },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),child: Text("add")),
                // ElevatedButton(onPressed: (){
                //
                //   Get.to(()=> pageone());
                // }, child: Text("Page one")),
                // ElevatedButton(onPressed: (){
                //   Get.to(pagetwo());
                //
                // }, child: Text("Page two"))

                // ElevatedButton(onPressed: (){
                //   Get.to(pagethree());
                //
                // }, child: Text("Page three")),
                // ElevatedButton(onPressed: (){
                //   Get.to(pagefour());
                //
                // }, child: Text("Page four"))




              ],
            ),
          ),

        ),
      ),
    );
  }
}

