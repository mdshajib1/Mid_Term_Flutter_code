import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool menuClicked = false.obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(35.0), // Adjusted padding further
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    menuClicked.value = !menuClicked.value;
                  },
                  child: Icon(Icons.menu_open, color: Colors.blueGrey[600], size: 28), // Changed icon and size
                ),
                SizedBox(height: size.width * 0.07),
                SizedBox(
                  width: size.width * 0.85,
                  height: size.height * 0.72,
                  child: Obx(
                    () => Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 450), // Further increased animation duration
                          curve: Curves.fastOutSlowIn, // Changed curve for a more dynamic effect
                          width: menuClicked.value ? size.width * 0.92 : size.width * 0.42,
                          height: size.height * 0.76,
                          decoration: BoxDecoration(
                            color: Colors.indigo[900], // Changed color
                            borderRadius: BorderRadius.circular(menuClicked.value ? 70 : 120),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 5,
                                blurRadius: 20,
                                offset: Offset(5, 5), // Shadow effect
                              ),
                            ],
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 450),
                          curve: Curves.fastOutSlowIn,
                          right: menuClicked.value ? 10 : 0,
                          top: menuClicked.value ? 60 : 0, // Further adjusted top position
                          child: Padding(
                            padding: EdgeInsets.all(menuClicked.value ? 12 : 0),
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 450),
                              curve: Curves.fastOutSlowIn,
                              width: menuClicked.value ? size.width - 130 : size.width * 0.4,
                              height: menuClicked.value ? size.width * 0.8 : size.height * 0.35,
                              decoration: BoxDecoration(
                                color: Colors.tealAccent[700], // Changed color
                                borderRadius: BorderRadius.circular(menuClicked.value ? 70 : 120),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 15,
                                    offset: Offset(3, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 450),
                          curve: Curves.fastOutSlowIn,
                          bottom: menuClicked.value ? size.width * 1.05 - size.width * 0.3 : 0,
                          right: menuClicked.value ? 10 : 0,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 450),
                            curve: Curves.fastOutSlowIn,
                            width: menuClicked.value ? size.width * 0.14 : size.width * 0.42,
                            height: menuClicked.value ? size.width * 0.14 : size.height * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300], // Changed color
                              borderRadius: BorderRadius.circular(130),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(2, 2),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
