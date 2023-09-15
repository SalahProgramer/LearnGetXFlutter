import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../controller/homeController.dart';

class pageone extends StatefulWidget {
  const pageone({super.key});

  @override
  State<pageone> createState() => _pageoneState();
}

class _pageoneState extends State<pageone> {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,iconTheme: IconThemeData(
          color: Colors.black
        ),),
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    controller.increment1();
                  },
                  icon: Icon(Icons.add)),
              GetBuilder<HomeController>(
                builder: (controller) {
                  return Text(controller.counter1.toString());
                },
              ),
              IconButton(
                  onPressed: () {
                    controller.decrement1();
                  },
                  icon: Icon(Icons.remove)),
            ],
          ),
        ),
      ),
    );
  }
}
