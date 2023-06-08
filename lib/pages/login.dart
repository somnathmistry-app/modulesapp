import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:modulesapp/pages/homepage.dart';

import '../controller/login_controller.dart';
import '../styles/app_colors.dart';


class LoginView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: (Column(
        children: [
          SizedBox(
              height: 140,
              child: SvgPicture.asset(
                'assets/images/bg.svg',
                fit: BoxFit.cover,
              )),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 60),
              child: ListView(
                shrinkWrap: true,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 35.0,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    child: Card(
                      elevation: 10,
                      shadowColor: AppColors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 50, bottom: 50, left: 28, right: 28),
                        child: Column(
                          children: [
                            Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    // margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 70.0),
                                    child: TextFormField(
                                        controller:
                                        _loginController.emailController,
                                        validator: (value) => value!.isEmpty
                                            ? "Please enter email"
                                            : !value.contains('@')
                                            ? "Invalid Email Id"
                                            : null,
                                        decoration: InputDecoration(
                                          hintText: 'Enter email',
                                          labelText: 'Enter your email',
                                          labelStyle: TextStyle(
                                            fontSize: 15,
                                            color: AppColors.themeColor,
                                            fontWeight: FontWeight.w300,
                                            // light
                                            fontStyle: FontStyle.normal,
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColors.themeColor)),
                                        )),
                                  ),

                                  const SizedBox(height: 20),
                                  //Password TextField
                                  Container(
                                    height: 50,
                                    //  margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                                    child: TextFormField(
                                        controller:
                                        _loginController.codeTEC,
                                        validator: (value) => value!.isEmpty
                                            ? 'Please input a password'
                                            : null,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText: 'Enter passcode',
                                          labelText: 'Enter your passcode',
                                          labelStyle: TextStyle(
                                            fontSize: 15,
                                            color: AppColors.themeColor,
                                            fontWeight: FontWeight.w300,
                                            // light
                                            fontStyle: FontStyle.normal,
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: AppColors.themeColor)),
                                        )),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                            //Login button
                            Container(
                              height: 45,
                              width: double.infinity,
                              // margin: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0),
                              child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  color: AppColors.themeColor,
                                  child: Text(
                                    'Get into app',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: AppColors.white),
                                  ),
                                  onPressed: () {
                                    Get.offAll(Homepage());
                                    //if (_formKey.currentState!.validate()) {
                                      //_loginController.getLogin();
                                    //}

                                    // Get.offAll(HomePage());

                                    // print('Email: '+.text+" "+'Password: '+_passwordTextController.text);
                                  }),
                            ),
                            const SizedBox(height: 30),

                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(child: Text('Note: Passcode was sent to your registerd email id'))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
