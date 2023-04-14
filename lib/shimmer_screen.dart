import 'package:fade_shimmer/fade_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/shimmer_controller.dart';
import 'package:get/get.dart';

class ShimmerEffectScreen extends StatelessWidget {
  const ShimmerEffectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: () {
          Get.find<ShimmerController>().toggle();
        },
        child: Obx(() => Icon(
              Get.find<ShimmerController>().isLoading.value
                  ? Icons.toggle_off
                  : Icons.toggle_on,
              color: Colors.white,
            )),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        width: Get.width,
        child: ListView.separated(
            itemBuilder: (context, index) {
              var delay = (index * 300);
              return Obx(() {
                return Get.find<ShimmerController>().isLoading.value
                    ? Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color(0xFF242424),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            FadeShimmer.round(
                              size: 60,
                              fadeTheme: FadeTheme.dark,
                              millisecondsDelay: delay,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FadeShimmer(
                                  width: 150,
                                  height: 8,
                                  fadeTheme: FadeTheme.dark,
                                  millisecondsDelay: delay,
                                  radius: 4,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                FadeShimmer(
                                  width: 170,
                                  height: 8,
                                  fadeTheme: FadeTheme.dark,
                                  millisecondsDelay: delay,
                                  radius: 4,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    : Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey[800],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text("Hello"),
                        ],
                      );
              });
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 10),
      ),
    );
  }
}
