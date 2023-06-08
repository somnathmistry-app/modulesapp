import 'package:flutter/material.dart';

AppBar appBar(String name) => AppBar(
    title: Text(name,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)));

