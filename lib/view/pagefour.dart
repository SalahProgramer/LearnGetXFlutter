// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx/controller/homeController.dart';
//
// class pagefour extends StatelessWidget {
//    pagefour({super.key});
// HomeController Getcontroller=Get.put(HomeController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//
//
//         child:  Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//
//           children: [
//
//             GetBuilder<HomeController>(init: HomeController(),builder: (controller) => Text(controller.counter1.toString()),),
//             GetBuilder<HomeController>(builder: (controller) => Text(controller.counter2.toString()),),
//             Text("Total :"),
//
//             GetBuilder<HomeController>(builder: (controller) => Text(controller.total.toString()),),
//             ElevatedButton(onPressed: (){
//               Getcontroller.increment1();
//             }, child: Text("Add one")),
//             ElevatedButton(onPressed: (){
//               Getcontroller.increment2();
//
//             }, child: Text("Add Two")),
//
//
//
//           ],
//         )
//       ),
//     );
//   }
// }
