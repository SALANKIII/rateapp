import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hazi/controllers/home_view_controller.dart';

class HomeView extends StatelessWidget {
  HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            body: Image.asset(
              'images/needforspeed.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ).blurred(
              blur: 3,
              overlay: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Image.asset(
                        'images/needforspeed2.jpg',
                      ),
                    ),
                    Text(
                      "Need for Speed",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text("2014"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: controller.getstars(),
                    ),
                    SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 120,
                            child: CupertinoButton(
                                child: Icon(Icons.remove),
                                color: Colors.red,
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  controller.csokkento();
                                }),
                          ),
                          SizedBox(
                            width: 120,
                            child: CupertinoButton(
                                child: Icon(Icons.add),
                                color: Colors.green,
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  controller.novelo();
                                }),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          );
        });
  }
}
