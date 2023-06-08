import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modulesapp/pages/number_of_parts_screen.dart';
import 'package:modulesapp/styles/app_colors.dart';
import 'package:modulesapp/styles/commonmodule/app_bar.dart';
import 'package:modulesapp/styles/commonmodule/my_widgets.dart';

class Modules extends StatefulWidget {
  String? title;


  Modules(this.title);

  @override
  State<Modules> createState() => _ModulesState();
}

class _ModulesState extends State<Modules> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(widget.title!),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return
            InkWell(
              onTap: (){
            Get.to(NumberPart('Module ${index+1}'));
          },
          child:
            Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(4))
            ),
            child:  MyWidgets.textView('Module ${index+1}', AppColors.black, 14)));

        },
      ),
    );
  }
}
