import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/motion_contoller.dart';
import 'package:flutter_application_1/shimmer_screen.dart';
import 'package:get/get.dart';

class MotionTabBr extends StatelessWidget {
  const MotionTabBr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Motion Tab bar"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey[800],
      ),
      body: const ShimmerEffectScreen(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.grey[800],
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() {
        return AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.favorite,
            Icons.delete,
            Icons.access_alarm,
          ],
          activeIndex: Get.find<MotionController>().index.value,
          gapLocation: GapLocation.center,
          activeColor: Colors.red.shade400,
          inactiveColor: Colors.white,
          notchSmoothness: NotchSmoothness.softEdge,
          backgroundColor: Colors.grey[800],
          onTap: (index) {
            Get.find<MotionController>().index.value = index;
          },
          //other params
        );
      }),
    );
  }
}
