import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/controller/homeController.dart';
import 'package:getx/view/Home.dart';

class pagetwo extends StatefulWidget {
  const pagetwo({super.key});

  @override
  State<pagetwo> createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {
  HomeController controll=Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page two"),
      ),
      body: Center(


        child: Text(controll.counter1.toString()),
      ),
    );
  }
}
