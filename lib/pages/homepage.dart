import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modulesapp/styles/commonmodule/app_bar.dart';
import 'package:modulesapp/styles/commonmodule/my_widgets.dart';

import 'modules_pages.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Choose installation'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: (){
                  Get.to(Modules('Tension Mounted Models'));
                },
                child: Container(
                  height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: const Center(child: Text('Tension Mounted Models',textAlign:TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
                ),
              ),

              InkWell(
                onTap: (){
                  Get.to(Modules('Wall Mounted Models'));
                },
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: const Center(child: Text('Wall Mounted Models',textAlign:TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
