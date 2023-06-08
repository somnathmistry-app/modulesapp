import 'package:flutter/material.dart';
import 'package:modulesapp/styles/commonmodule/app_bar.dart';
class NumberPart extends StatelessWidget {
  String? moduleName;


  NumberPart(this.moduleName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(moduleName!),

      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Center(child: Text('Number of sparts screen', style: TextStyle(fontSize: 18),))

        ],
      ),
    );
  }
}
