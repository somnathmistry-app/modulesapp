import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modulesapp/pages/login.dart';

import '../styles/app_colors.dart';

class SplashView extends StatelessWidget {
  //const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    print('userId`````````````: ${box.read('userId')}');
    Timer(const Duration(seconds: 5), () {
      Get.offAll(LoginView());
    });

    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: AppColors.white,
            child: Center(
                child: Image.asset(
              'assets/gif/splas.gif',
              //scale: .5,
            ))

            // Container(
            //     decoration: const BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage("assets/images/sp.jpg"),
            //         fit: BoxFit.cover,
            //       ),
            //     ),
            //     //Image.asset('assets/images/logo.png'),
            //     child: Center(
            //         child: Image.asset(
            //       'assets/images/logo.png',
            //       scale: 3,
            //     ))),
            ));
  }
}
